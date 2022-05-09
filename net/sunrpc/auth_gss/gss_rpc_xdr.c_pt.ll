; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_rpc_xdr.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_rpc_xdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.26 }
%union.anon.26 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xdr_netobj = type { i32, ptr }
%struct.gssx_call_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssx_option_array = type { i32, ptr }
%struct.gssx_arg_accept_sec_context = type { %struct.gssx_call_ctx, ptr, ptr, %struct.gssp_in_token, ptr, i32, %struct.gssx_option_array, ptr, i32 }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.gssx_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, i64, i64, i32, i32, %struct.gssx_option_array }
%struct.gssx_name = type { %struct.xdr_netobj }
%struct.gssx_cred = type { %struct.gssx_name, %struct.gssx_cred_element_array, %struct.xdr_netobj, i32 }
%struct.gssx_cred_element_array = type { i32, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.128, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.128 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.gssx_cb = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.gssx_status = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssx_res_accept_sec_context = type { %struct.gssx_status, ptr, ptr, %struct.gssx_option_array }
%struct.gssx_option = type { %struct.xdr_netobj, %struct.xdr_netobj }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.gssx_name_attr = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }

@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gssx_enc_accept_sec_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RPC:       gssx_enc_accept_sec_context: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gssx_enc_accept_sec_context\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/sunrpc/auth_gss/gss_rpc_xdr.c\00", [62 x i8] zeroinitializer }, align 32
@gssx_enc_accept_sec_context._entry_ptr = internal global ptr @gssx_enc_accept_sec_context._entry, section ".printk_index", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exported_context_type\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux_lucid_v1\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exported_creds_type\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux_creds_v1\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 776, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 361, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 363, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 368, i32 20 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [37 x i8] c"../net/sunrpc/auth_gss/gss_rpc_xdr.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 370, i32 19 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @gssx_enc_accept_sec_context._entry, ptr @gssx_enc_accept_sec_context._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssx_enc_accept_sec_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gssx_enc_accept_sec_context(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.xdr_netobj, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call2.i.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i.i, ptr noundef %3, i32 noundef %5) #6
  %server_ctx.i = getelementptr inbounds %struct.gssx_call_ctx, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %server_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %server_ctx.i, align 4
  %add.i31.i = add i32 %7, 4
  %call.i32.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i31.i) #6
  %tobool.not.i33.i = icmp eq ptr %call.i32.i, null
  br i1 %tobool.not.i33.i, label %if.end.i.do.body_crit_edge, label %if.end4.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end4.i:                                        ; preds = %if.end.i
  %data.i34.i = getelementptr inbounds %struct.gssx_call_ctx, ptr %data, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i34.i, align 4
  %10 = ptrtoint ptr %server_ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %server_ctx.i, align 4
  %call2.i35.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i32.i, ptr noundef %9, i32 noundef %11) #6
  %call5.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %12 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %call5.i, align 4
  %call.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 26) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.gssx_enc_option.exit.i_crit_edge, label %if.end.i39.i

if.end4.i.gssx_enc_option.exit.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_enc_option.exit.i

if.end.i39.i:                                     ; preds = %if.end4.i
  %call2.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.3, i32 noundef 22) #6
  %call.i7.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 19) #6
  %tobool.not.i8.i.i = icmp eq ptr %call.i7.i.i, null
  br i1 %tobool.not.i8.i.i, label %if.end.i39.i.gssx_enc_option.exit.i_crit_edge, label %if.end.i11.i.i

if.end.i39.i.gssx_enc_option.exit.i_crit_edge:    ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_enc_option.exit.i

if.end.i11.i.i:                                   ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i10.i.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i7.i.i, ptr noundef nonnull @.str.4, i32 noundef 15) #6
  br label %gssx_enc_option.exit.i

gssx_enc_option.exit.i:                           ; preds = %if.end.i11.i.i, %if.end.i39.i.gssx_enc_option.exit.i_crit_edge, %if.end4.i.gssx_enc_option.exit.i_crit_edge
  %call.i.i42.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 24) #6
  %tobool.not.i.i43.i = icmp eq ptr %call.i.i42.i, null
  br i1 %tobool.not.i.i43.i, label %gssx_enc_option.exit.i.do.body_crit_edge, label %if.end.i50.i

gssx_enc_option.exit.i.do.body_crit_edge:         ; preds = %gssx_enc_option.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i50.i:                                     ; preds = %gssx_enc_option.exit.i
  %call2.i.i45.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i.i42.i, ptr noundef nonnull @.str.5, i32 noundef 20) #6
  %call.i7.i48.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 19) #6
  %tobool.not.i8.i49.i = icmp eq ptr %call.i7.i48.i, null
  br i1 %tobool.not.i8.i49.i, label %if.end.i50.i.do.body_crit_edge, label %if.end

if.end.i50.i.do.body_crit_edge:                   ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end:                                           ; preds = %if.end.i50.i
  %call2.i10.i52.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i7.i48.i, ptr noundef nonnull @.str.6, i32 noundef 15) #6
  %context_handle = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context_handle, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.i.i80 = add i32 %16, 4
  %call.i.i81 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i80) #6
  %tobool.not.i.i82 = icmp eq ptr %call.i.i81, null
  br i1 %tobool.not.i.i82, label %if.then2.do.body_crit_edge, label %if.end.i85

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i85:                                       ; preds = %if.then2
  %data.i.i83 = getelementptr inbounds %struct.xdr_netobj, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i83, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  %call2.i.i84 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i.i81, ptr noundef %18, i32 noundef %20) #6
  %state.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 4
  %add.i74.i = add i32 %22, 4
  %call.i75.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i74.i) #6
  %tobool.not.i76.i = icmp eq ptr %call.i75.i, null
  br i1 %tobool.not.i76.i, label %if.end.i85.do.body_crit_edge, label %if.end4.i86

if.end.i85.do.body_crit_edge:                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end4.i86:                                      ; preds = %if.end.i85
  %data.i77.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %data.i77.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i77.i, align 4
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 4
  %call2.i78.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i75.i, ptr noundef %24, i32 noundef %26) #6
  %need_release.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 2
  %27 = ptrtoint ptr %need_release.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %need_release.i, align 8
  %call.i82.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i = icmp eq ptr %call.i82.i, null
  br i1 %cmp.i.i, label %if.end4.i86.do.body_crit_edge, label %if.end8.i, !prof !32

if.end4.i86.do.body_crit_edge:                    ; preds = %if.end4.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end8.i:                                        ; preds = %if.end4.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i.i = icmp ne i32 %28, 0
  %cond.i.i = zext i1 %tobool2.not.i.i to i32
  %29 = ptrtoint ptr %call.i82.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i.i, ptr %call.i82.i, align 4
  %mech.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 3
  %30 = ptrtoint ptr %mech.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mech.i, align 4
  %add.i85.i = add i32 %31, 4
  %call.i86.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i85.i) #6
  %tobool.not.i87.i = icmp eq ptr %call.i86.i, null
  br i1 %tobool.not.i87.i, label %if.end8.i.do.body_crit_edge, label %if.end12.i

if.end8.i.do.body_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end12.i:                                       ; preds = %if.end8.i
  %data.i88.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %data.i88.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i88.i, align 4
  %34 = ptrtoint ptr %mech.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mech.i, align 4
  %call2.i89.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i86.i, ptr noundef %33, i32 noundef %35) #6
  %src_name.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 4
  %call13.i = tail call fastcc i32 @gssx_enc_name(ptr noundef %xdr, ptr noundef %src_name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.do.body_crit_edge

if.end12.i.do.body_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end16.i:                                       ; preds = %if.end12.i
  %targ_name.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 5
  %call17.i = tail call fastcc i32 @gssx_enc_name(ptr noundef %xdr, ptr noundef %targ_name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.do.body_crit_edge

if.end16.i.do.body_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #6
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end20.i.do.body_crit_edge, label %if.end24.i

if.end20.i.do.body_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end24.i:                                       ; preds = %if.end20.i
  %lifetime.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 6
  %36 = ptrtoint ptr %lifetime.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lifetime.i, align 8
  %38 = ptrtoint ptr %call21.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %call21.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call21.i, i32 2
  %ctx_flags.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 7
  %39 = ptrtoint ptr %ctx_flags.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ctx_flags.i, align 8
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %add.ptr.i.i, align 1
  %locally_initiated.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 8
  %42 = ptrtoint ptr %locally_initiated.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %locally_initiated.i, align 8
  %call.i94.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i95.i = icmp eq ptr %call.i94.i, null
  br i1 %cmp.i95.i, label %if.end24.i.do.body_crit_edge, label %if.end30.i, !prof !32

if.end24.i.do.body_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i96.i = icmp ne i32 %43, 0
  %cond.i97.i = zext i1 %tobool2.not.i96.i to i32
  %44 = ptrtoint ptr %call.i94.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i97.i, ptr %call.i94.i, align 4
  %open.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 9
  %45 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %open.i, align 4
  %call.i101.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i102.i = icmp eq ptr %call.i101.i, null
  br i1 %cmp.i102.i, label %if.end30.i.do.body_crit_edge, label %if.end34.i, !prof !32

if.end30.i.do.body_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end34.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool2.not.i103.i = icmp ne i32 %46, 0
  %cond.i104.i = zext i1 %tobool2.not.i103.i to i32
  %47 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i104.i, ptr %call.i101.i, align 4
  %options.i = getelementptr inbounds %struct.gssx_ctx, ptr %14, i32 0, i32 10
  %48 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %options.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i.i, label %if.end.i110.i, label %if.end34.i.do.body_crit_edge

if.end34.i.do.body_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i110.i:                                    ; preds = %if.end34.i
  %call.i108.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i109.i = icmp eq ptr %call.i108.i, null
  br i1 %tobool.not.i109.i, label %if.end.i110.i.do.body_crit_edge, label %if.end.i110.i.if.end9_crit_edge

if.end.i110.i.if.end9_crit_edge:                  ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i110.i.do.body_crit_edge:                  ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %if.end
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.else.do.body_crit_edge, label %if.else.if.end9_crit_edge, !prof !32

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.end.i110.i.if.end9_crit_edge
  %call.i108.i.sink = phi ptr [ %call.i108.i, %if.end.i110.i.if.end9_crit_edge ], [ %call.i, %if.else.if.end9_crit_edge ]
  %50 = ptrtoint ptr %call.i108.i.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %call.i108.i.sink, align 4
  %cred_handle = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 2
  %51 = ptrtoint ptr %cred_handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cred_handle, align 4
  %tobool10.not = icmp eq ptr %52, null
  br i1 %tobool10.not, label %if.else14, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call.i90 = tail call fastcc i32 @gssx_enc_name(ptr noundef %xdr, ptr noundef nonnull %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i92, label %if.then11.do.body_crit_edge

if.then11.do.body_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i92:                                       ; preds = %if.then11
  %elements.i = getelementptr inbounds %struct.gssx_cred, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %elements.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i.i91 = icmp eq i32 %54, 0
  br i1 %cmp.not.i.i91, label %if.end.i.i, label %if.end.i92.do.body_crit_edge

if.end.i92.do.body_crit_edge:                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i:                                       ; preds = %if.end.i92
  %call.i.i93 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i94 = icmp eq ptr %call.i.i93, null
  br i1 %tobool.not.i.i94, label %if.end.i.i.do.body_crit_edge, label %if.end4.i96

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end4.i96:                                      ; preds = %if.end.i.i
  %55 = ptrtoint ptr %call.i.i93 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %call.i.i93, align 4
  %cred_handle_reference.i = getelementptr inbounds %struct.gssx_cred, ptr %52, i32 0, i32 2
  %56 = ptrtoint ptr %cred_handle_reference.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cred_handle_reference.i, align 4
  %add.i.i95 = add i32 %57, 4
  %call.i22.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i95) #6
  %tobool.not.i23.i = icmp eq ptr %call.i22.i, null
  br i1 %tobool.not.i23.i, label %if.end4.i96.do.body_crit_edge, label %if.end8.i100

if.end4.i96.do.body_crit_edge:                    ; preds = %if.end4.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end8.i100:                                     ; preds = %if.end4.i96
  %data.i.i97 = getelementptr inbounds %struct.gssx_cred, ptr %52, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %data.i.i97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i97, align 4
  %60 = ptrtoint ptr %cred_handle_reference.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cred_handle_reference.i, align 4
  %call2.i.i98 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i22.i, ptr noundef %59, i32 noundef %61) #6
  %needs_release.i = getelementptr inbounds %struct.gssx_cred, ptr %52, i32 0, i32 3
  %62 = ptrtoint ptr %needs_release.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %needs_release.i, align 4
  %call.i26.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i99 = icmp eq ptr %call.i26.i, null
  br i1 %cmp.i.i99, label %if.end8.i100.do.body_crit_edge, label %if.end.i27.i, !prof !32

if.end8.i100.do.body_crit_edge:                   ; preds = %if.end8.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i27.i:                                     ; preds = %if.end8.i100
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool2.not.i.i101 = icmp ne i32 %63, 0
  %cond.i.i102 = zext i1 %tobool2.not.i.i101 to i32
  %64 = ptrtoint ptr %call.i26.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond.i.i102, ptr %call.i26.i, align 4
  br label %if.end19

if.else14:                                        ; preds = %if.end9
  %call.i104 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i105 = icmp eq ptr %call.i104, null
  br i1 %cmp.i105, label %if.else14.do.body_crit_edge, label %if.end.i106, !prof !32

if.else14.do.body_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i106:                                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %call.i104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %call.i104, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end.i106, %if.end.i27.i
  %call.i109 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i110 = icmp eq ptr %call.i109, null
  br i1 %tobool.not.i110, label %if.end19.do.body_crit_edge, label %if.end23

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end23:                                         ; preds = %if.end19
  %input_token = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 3
  %page_len.i = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %page_len.i, align 4
  %68 = ptrtoint ptr %call.i109 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %call.i109, align 4
  %69 = ptrtoint ptr %input_token to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %input_token, align 4
  %page_base.i = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_base.i, align 4
  %73 = load i32, ptr %page_len.i, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %70, i32 noundef %72, i32 noundef %73) #6
  %input_cb = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 4
  %74 = ptrtoint ptr %input_cb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %input_cb, align 4
  %tobool24.not = icmp eq ptr %75, null
  br i1 %tobool24.not, label %if.else28, label %if.end30

if.else28:                                        ; preds = %if.end23
  %call.i113 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i114 = icmp eq ptr %call.i113, null
  br i1 %cmp.i114, label %if.else28.do.body_crit_edge, label %if.end30.thread, !prof !32

if.else28.do.body_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end30.thread:                                  ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %call.i113 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %call.i113, align 4
  br label %if.end33

if.end30:                                         ; preds = %if.end23
  %call27 = tail call fastcc i32 @gssx_enc_cb(ptr noundef %xdr, ptr noundef nonnull %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool31.not = icmp eq i32 %call27, 0
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %if.end30.if.end33_crit_edge, %if.end30.thread
  %ret_deleg_cred = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 5
  %77 = ptrtoint ptr %ret_deleg_cred to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ret_deleg_cred, align 4
  %call.i118 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i119 = icmp eq ptr %call.i118, null
  br i1 %cmp.i119, label %if.end33.do.body_crit_edge, label %if.end37, !prof !32

if.end33.do.body_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool2.not.i = icmp ne i32 %78, 0
  %cond.i = zext i1 %tobool2.not.i to i32
  %79 = ptrtoint ptr %call.i118 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond.i, ptr %call.i118, align 4
  %options = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 6
  %80 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.not.i = icmp eq i32 %81, 0
  br i1 %cmp.not.i, label %if.end.i125, label %if.end37.done_crit_edge

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end.i125:                                      ; preds = %if.end37
  %call.i123 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i124 = icmp eq ptr %call.i123, null
  br i1 %tobool.not.i124, label %if.end.i125.done_crit_edge, label %if.end2.i

if.end.i125.done_crit_edge:                       ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end2.i:                                        ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %call.i123 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %call.i123, align 4
  br label %done

done:                                             ; preds = %if.end2.i, %if.end.i125.done_crit_edge, %if.end37.done_crit_edge
  %tobool39.not = phi i1 [ true, %if.end2.i ], [ false, %if.end.i125.done_crit_edge ], [ false, %if.end37.done_crit_edge ]
  %retval.0.i126 = phi i32 [ 0, %if.end2.i ], [ -28, %if.end.i125.done_crit_edge ], [ -22, %if.end37.done_crit_edge ]
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2
  %pages = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 7
  %83 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pages, align 4
  %npages = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %data, i32 0, i32 8
  %85 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %npages, align 4
  %mul = shl i32 %86, 12
  tail call void @xdr_inline_pages(ptr noundef %rq_rcv_buf, i32 noundef 2048, ptr noundef %84, i32 noundef 0, i32 noundef %mul) #6
  br i1 %tobool39.not, label %done.if.end50_crit_edge, label %done.do.body_crit_edge

done.do.body_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

done.if.end50_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body:                                          ; preds = %done.do.body_crit_edge, %if.end33.do.body_crit_edge, %if.end30.do.body_crit_edge, %if.else28.do.body_crit_edge, %if.end19.do.body_crit_edge, %if.else14.do.body_crit_edge, %if.end8.i100.do.body_crit_edge, %if.end4.i96.do.body_crit_edge, %if.end.i.i.do.body_crit_edge, %if.end.i92.do.body_crit_edge, %if.then11.do.body_crit_edge, %if.else.do.body_crit_edge, %if.end.i110.i.do.body_crit_edge, %if.end34.i.do.body_crit_edge, %if.end30.i.do.body_crit_edge, %if.end24.i.do.body_crit_edge, %if.end20.i.do.body_crit_edge, %if.end16.i.do.body_crit_edge, %if.end12.i.do.body_crit_edge, %if.end8.i.do.body_crit_edge, %if.end4.i86.do.body_crit_edge, %if.end.i85.do.body_crit_edge, %if.then2.do.body_crit_edge, %if.end.i50.i.do.body_crit_edge, %gssx_enc_option.exit.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  %err.3144 = phi i32 [ %retval.0.i126, %done.do.body_crit_edge ], [ -28, %if.end33.do.body_crit_edge ], [ -28, %if.end19.do.body_crit_edge ], [ %call27, %if.end30.do.body_crit_edge ], [ -28, %entry.do.body_crit_edge ], [ -28, %if.end.i.do.body_crit_edge ], [ -28, %gssx_enc_option.exit.i.do.body_crit_edge ], [ -28, %if.end.i50.i.do.body_crit_edge ], [ -28, %if.else.do.body_crit_edge ], [ -28, %if.end.i110.i.do.body_crit_edge ], [ -22, %if.end34.i.do.body_crit_edge ], [ -28, %if.end30.i.do.body_crit_edge ], [ -28, %if.end24.i.do.body_crit_edge ], [ -28, %if.end8.i.do.body_crit_edge ], [ -28, %if.end4.i86.do.body_crit_edge ], [ -28, %if.end.i85.do.body_crit_edge ], [ -28, %if.then2.do.body_crit_edge ], [ -28, %if.end20.i.do.body_crit_edge ], [ %call17.i, %if.end16.i.do.body_crit_edge ], [ %call13.i, %if.end12.i.do.body_crit_edge ], [ -28, %if.else14.do.body_crit_edge ], [ -22, %if.end.i92.do.body_crit_edge ], [ -28, %if.end.i.i.do.body_crit_edge ], [ -28, %if.end8.i100.do.body_crit_edge ], [ -28, %if.end4.i96.do.body_crit_edge ], [ %call.i90, %if.then11.do.body_crit_edge ], [ -28, %if.else28.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %87 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %do.body.if.end50_crit_edge, label %do.end, !prof !33

do.body.if.end50_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %err.3144) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end, %do.body.if.end50_crit_edge, %done.if.end50_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gssx_enc_cb(ptr noundef %xdr, ptr nocapture noundef readonly %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cb, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %call, align 1
  %initiator_address = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 1
  %3 = ptrtoint ptr %initiator_address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %initiator_address, align 4
  %add.i = add i32 %4, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %initiator_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initiator_address, align 4
  %call2.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i, ptr noundef %6, i32 noundef %8) #6
  %call6 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %acceptor_addrtype = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 2
  %9 = ptrtoint ptr %acceptor_addrtype to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %acceptor_addrtype, align 8
  %11 = ptrtoint ptr %call6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %call6, align 1
  %acceptor_address = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 3
  %12 = ptrtoint ptr %acceptor_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %acceptor_address, align 4
  %add.i33 = add i32 %13, 4
  %call.i34 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i33) #6
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %data.i36 = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %data.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i36, align 4
  %16 = ptrtoint ptr %acceptor_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %acceptor_address, align 4
  %call2.i37 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i34, ptr noundef %15, i32 noundef %17) #6
  %application_data = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 4
  %18 = ptrtoint ptr %application_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %application_data, align 4
  %add.i41 = add i32 %19, 4
  %call.i42 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i41) #6
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %if.end14.cleanup_crit_edge, label %if.end.i46

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i46:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %data.i44 = getelementptr inbounds %struct.gssx_cb, ptr %cb, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %data.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i44, align 4
  %22 = ptrtoint ptr %application_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %application_data, align 4
  %call2.i45 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i42, ptr noundef %21, i32 noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i46, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ -28, %if.end5.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -28, %if.end9.cleanup_crit_edge ], [ 0, %if.end.i46 ], [ -28, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_inline_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gssx_dec_accept_sec_context(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #6
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4
  %0 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call.i61 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %cmp.i = icmp eq ptr %call.i61, null
  br i1 %cmp.i, label %if.end.out_free_crit_edge, label %if.end.i, !prof !32

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call.i61 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %call.i61, align 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %data, align 8
  %mech.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 1
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end.i.out_free_crit_edge, label %if.end.i.i, !prof !32

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i.i, align 4
  %call3.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %6) #6
  %cmp4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp4.i.i, label %if.end.i.i.out_free_crit_edge, label %if.end12.i.i, !prof !32

if.end.i.i.out_free_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i.i:                                     ; preds = %if.end.i.i
  %7 = ptrtoint ptr %mech.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mech.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.i.i = icmp eq i32 %8, 0
  br i1 %cmp13.i.i, label %if.end12.i.i.if.end6.i_crit_edge, label %if.end15.i.i

if.end12.i.i.if.end6.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end15.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp17.i.i = icmp ugt i32 %6, %8
  br i1 %cmp17.i.i, label %if.end15.i.i.out_free_crit_edge, label %if.end19.i.i

if.end15.i.i.out_free_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %data.i.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %10, null
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.else.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  %call22.i.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i.i, i32 noundef %6, i32 noundef 3264) #6
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22.i.i, ptr %data.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %call22.i.i, null
  br i1 %tobool25.not.i.i, label %if.then21.i.i.out_free_crit_edge, label %if.then21.i.i.if.end29.i.i_crit_edge

if.then21.i.i.if.end29.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i

if.then21.i.i.out_free_crit_edge:                 ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call ptr @memcpy(ptr %10, ptr %call3.i.i, i32 %6)
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else.i.i, %if.then21.i.i.if.end29.i.i_crit_edge
  %13 = ptrtoint ptr %mech.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %mech.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end29.i.i, %if.end12.i.i.if.end6.i_crit_edge
  %call7.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %if.end6.i.out_free_crit_edge, label %if.end16.i, !prof !32

if.end6.i.out_free_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end16.i:                                       ; preds = %if.end6.i
  %minor_status.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %call7.i, align 1
  %16 = ptrtoint ptr %minor_status.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %minor_status.i, align 8
  %major_status_string.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 3
  %call.i56.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i57.i = icmp eq ptr %call.i56.i, null
  br i1 %cmp.i57.i, label %if.end16.i.out_free_crit_edge, label %if.end.i60.i, !prof !32

if.end16.i.out_free_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i60.i:                                     ; preds = %if.end16.i
  %17 = ptrtoint ptr %call.i56.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i56.i, align 4
  %call3.i58.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %18) #6
  %cmp4.i59.i = icmp eq ptr %call3.i58.i, null
  br i1 %cmp4.i59.i, label %if.end.i60.i.out_free_crit_edge, label %if.end12.i62.i, !prof !32

if.end.i60.i.out_free_crit_edge:                  ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i62.i:                                   ; preds = %if.end.i60.i
  %19 = ptrtoint ptr %major_status_string.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %major_status_string.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13.i61.i = icmp eq i32 %20, 0
  br i1 %cmp13.i61.i, label %if.end12.i62.i.if.end21.i_crit_edge, label %if.end15.i64.i

if.end12.i62.i.if.end21.i_crit_edge:              ; preds = %if.end12.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.end15.i64.i:                                   ; preds = %if.end12.i62.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp17.i63.i = icmp ugt i32 %18, %20
  br i1 %cmp17.i63.i, label %if.end15.i64.i.out_free_crit_edge, label %if.end19.i67.i

if.end15.i64.i.out_free_crit_edge:                ; preds = %if.end15.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i67.i:                                   ; preds = %if.end15.i64.i
  %data.i65.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i65.i, align 4
  %tobool20.not.i66.i = icmp eq ptr %22, null
  br i1 %tobool20.not.i66.i, label %if.then21.i70.i, label %if.else.i71.i

if.then21.i70.i:                                  ; preds = %if.end19.i67.i
  %call22.i68.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i58.i, i32 noundef %18, i32 noundef 3264) #6
  %23 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call22.i68.i, ptr %data.i65.i, align 4
  %tobool25.not.i69.i = icmp eq ptr %call22.i68.i, null
  br i1 %tobool25.not.i69.i, label %if.then21.i70.i.out_free_crit_edge, label %if.then21.i70.i.if.end29.i72.i_crit_edge

if.then21.i70.i.if.end29.i72.i_crit_edge:         ; preds = %if.then21.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i72.i

if.then21.i70.i.out_free_crit_edge:               ; preds = %if.then21.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i71.i:                                    ; preds = %if.end19.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = call ptr @memcpy(ptr %22, ptr %call3.i58.i, i32 %18)
  br label %if.end29.i72.i

if.end29.i72.i:                                   ; preds = %if.else.i71.i, %if.then21.i70.i.if.end29.i72.i_crit_edge
  %25 = ptrtoint ptr %major_status_string.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %18, ptr %major_status_string.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end29.i72.i, %if.end12.i62.i.if.end21.i_crit_edge
  %minor_status_string.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 4
  %call.i75.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i76.i = icmp eq ptr %call.i75.i, null
  br i1 %cmp.i76.i, label %if.end21.i.out_free_crit_edge, label %if.end.i79.i, !prof !32

if.end21.i.out_free_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i79.i:                                     ; preds = %if.end21.i
  %26 = ptrtoint ptr %call.i75.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i75.i, align 4
  %call3.i77.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %27) #6
  %cmp4.i78.i = icmp eq ptr %call3.i77.i, null
  br i1 %cmp4.i78.i, label %if.end.i79.i.out_free_crit_edge, label %if.end12.i81.i, !prof !32

if.end.i79.i.out_free_crit_edge:                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i81.i:                                   ; preds = %if.end.i79.i
  %28 = ptrtoint ptr %minor_status_string.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %minor_status_string.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp13.i80.i = icmp eq i32 %29, 0
  br i1 %cmp13.i80.i, label %if.end12.i81.i.if.end25.i_crit_edge, label %if.end15.i83.i

if.end12.i81.i.if.end25.i_crit_edge:              ; preds = %if.end12.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.end15.i83.i:                                   ; preds = %if.end12.i81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp17.i82.i = icmp ugt i32 %27, %29
  br i1 %cmp17.i82.i, label %if.end15.i83.i.out_free_crit_edge, label %if.end19.i86.i

if.end15.i83.i.out_free_crit_edge:                ; preds = %if.end15.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i86.i:                                   ; preds = %if.end15.i83.i
  %data.i84.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %data.i84.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i84.i, align 4
  %tobool20.not.i85.i = icmp eq ptr %31, null
  br i1 %tobool20.not.i85.i, label %if.then21.i89.i, label %if.else.i90.i

if.then21.i89.i:                                  ; preds = %if.end19.i86.i
  %call22.i87.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i77.i, i32 noundef %27, i32 noundef 3264) #6
  %32 = ptrtoint ptr %data.i84.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call22.i87.i, ptr %data.i84.i, align 4
  %tobool25.not.i88.i = icmp eq ptr %call22.i87.i, null
  br i1 %tobool25.not.i88.i, label %if.then21.i89.i.out_free_crit_edge, label %if.then21.i89.i.if.end29.i91.i_crit_edge

if.then21.i89.i.if.end29.i91.i_crit_edge:         ; preds = %if.then21.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i91.i

if.then21.i89.i.out_free_crit_edge:               ; preds = %if.then21.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i90.i:                                    ; preds = %if.end19.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call ptr @memcpy(ptr %31, ptr %call3.i77.i, i32 %27)
  br label %if.end29.i91.i

if.end29.i91.i:                                   ; preds = %if.else.i90.i, %if.then21.i89.i.if.end29.i91.i_crit_edge
  %34 = ptrtoint ptr %minor_status_string.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %27, ptr %minor_status_string.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end29.i91.i, %if.end12.i81.i.if.end25.i_crit_edge
  %server_ctx.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 5
  %call.i94.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i95.i = icmp eq ptr %call.i94.i, null
  br i1 %cmp.i95.i, label %if.end25.i.out_free_crit_edge, label %if.end.i98.i, !prof !32

if.end25.i.out_free_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i98.i:                                     ; preds = %if.end25.i
  %35 = ptrtoint ptr %call.i94.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i94.i, align 4
  %call3.i96.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %36) #6
  %cmp4.i97.i = icmp eq ptr %call3.i96.i, null
  br i1 %cmp4.i97.i, label %if.end.i98.i.out_free_crit_edge, label %if.end12.i100.i, !prof !32

if.end.i98.i.out_free_crit_edge:                  ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i100.i:                                  ; preds = %if.end.i98.i
  %37 = ptrtoint ptr %server_ctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %server_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp13.i99.i = icmp eq i32 %38, 0
  br i1 %cmp13.i99.i, label %if.end12.i100.i.gssx_dec_status.exit_crit_edge, label %if.end15.i102.i

if.end12.i100.i.gssx_dec_status.exit_crit_edge:   ; preds = %if.end12.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_status.exit

if.end15.i102.i:                                  ; preds = %if.end12.i100.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp17.i101.i = icmp ugt i32 %36, %38
  br i1 %cmp17.i101.i, label %if.end15.i102.i.out_free_crit_edge, label %if.end19.i105.i

if.end15.i102.i.out_free_crit_edge:               ; preds = %if.end15.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i105.i:                                  ; preds = %if.end15.i102.i
  %data.i103.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %data.i103.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i103.i, align 4
  %tobool20.not.i104.i = icmp eq ptr %40, null
  br i1 %tobool20.not.i104.i, label %if.then21.i108.i, label %if.else.i109.i

if.then21.i108.i:                                 ; preds = %if.end19.i105.i
  %call22.i106.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i96.i, i32 noundef %36, i32 noundef 3264) #6
  %41 = ptrtoint ptr %data.i103.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call22.i106.i, ptr %data.i103.i, align 4
  %tobool25.not.i107.i = icmp eq ptr %call22.i106.i, null
  br i1 %tobool25.not.i107.i, label %if.then21.i108.i.out_free_crit_edge, label %if.then21.i108.i.if.end29.i110.i_crit_edge

if.then21.i108.i.if.end29.i110.i_crit_edge:       ; preds = %if.then21.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i110.i

if.then21.i108.i.out_free_crit_edge:              ; preds = %if.then21.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i109.i:                                   ; preds = %if.end19.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = call ptr @memcpy(ptr %40, ptr %call3.i96.i, i32 %36)
  br label %if.end29.i110.i

if.end29.i110.i:                                  ; preds = %if.else.i109.i, %if.then21.i108.i.if.end29.i110.i_crit_edge
  %43 = ptrtoint ptr %server_ctx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %36, ptr %server_ctx.i, align 4
  br label %gssx_dec_status.exit

gssx_dec_status.exit:                             ; preds = %if.end29.i110.i, %if.end12.i100.i.gssx_dec_status.exit_crit_edge
  %options.i = getelementptr inbounds %struct.gssx_status, ptr %data, i32 0, i32 6
  %call30.i = tail call fastcc i32 @dummy_dec_opt_array(ptr noundef %xdr, ptr noundef %options.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool2.not = icmp eq i32 %call30.i, 0
  br i1 %tobool2.not, label %if.end4, label %gssx_dec_status.exit.out_free_crit_edge

gssx_dec_status.exit.out_free_crit_edge:          ; preds = %gssx_dec_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end4:                                          ; preds = %gssx_dec_status.exit
  %call.i62 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i63 = icmp eq ptr %call.i62, null
  br i1 %cmp.i63, label %if.end4.out_free_crit_edge, label %if.end8, !prof !32

if.end4.out_free_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end8:                                          ; preds = %if.end4
  %44 = ptrtoint ptr %call.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not = icmp eq i32 %45, 0
  %context_handle15 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %data, i32 0, i32 1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %46 = ptrtoint ptr %context_handle15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context_handle15, align 8
  %call.i.i66 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i67 = icmp eq ptr %call.i.i66, null
  br i1 %cmp.i.i67, label %if.then10.out_free_crit_edge, label %if.end.i.i70, !prof !32

if.then10.out_free_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i.i70:                                     ; preds = %if.then10
  %48 = ptrtoint ptr %call.i.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i.i66, align 4
  %call3.i.i68 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %49) #6
  %cmp4.i.i69 = icmp eq ptr %call3.i.i68, null
  br i1 %cmp4.i.i69, label %if.end.i.i70.out_free_crit_edge, label %if.end12.i.i72, !prof !32

if.end.i.i70.out_free_crit_edge:                  ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i.i72:                                   ; preds = %if.end.i.i70
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp13.i.i71 = icmp eq i32 %51, 0
  br i1 %cmp13.i.i71, label %if.end12.i.i72.if.end.i85_crit_edge, label %if.end15.i.i74

if.end12.i.i72.if.end.i85_crit_edge:              ; preds = %if.end12.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i85

if.end15.i.i74:                                   ; preds = %if.end12.i.i72
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp17.i.i73 = icmp ugt i32 %49, %51
  br i1 %cmp17.i.i73, label %if.end15.i.i74.out_free_crit_edge, label %if.end19.i.i77

if.end15.i.i74.out_free_crit_edge:                ; preds = %if.end15.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i.i77:                                   ; preds = %if.end15.i.i74
  %data.i.i75 = getelementptr inbounds %struct.xdr_netobj, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %data.i.i75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i75, align 4
  %tobool20.not.i.i76 = icmp eq ptr %53, null
  br i1 %tobool20.not.i.i76, label %if.then21.i.i80, label %if.else.i.i81

if.then21.i.i80:                                  ; preds = %if.end19.i.i77
  %call22.i.i78 = tail call ptr @kmemdup(ptr noundef nonnull %call3.i.i68, i32 noundef %49, i32 noundef 3264) #6
  %54 = ptrtoint ptr %data.i.i75 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call22.i.i78, ptr %data.i.i75, align 4
  %tobool25.not.i.i79 = icmp eq ptr %call22.i.i78, null
  br i1 %tobool25.not.i.i79, label %if.then21.i.i80.out_free_crit_edge, label %if.then21.i.i80.if.end29.i.i82_crit_edge

if.then21.i.i80.if.end29.i.i82_crit_edge:         ; preds = %if.then21.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i82

if.then21.i.i80.out_free_crit_edge:               ; preds = %if.then21.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i.i81:                                    ; preds = %if.end19.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  %55 = call ptr @memcpy(ptr %53, ptr %call3.i.i68, i32 %49)
  br label %if.end29.i.i82

if.end29.i.i82:                                   ; preds = %if.else.i.i81, %if.then21.i.i80.if.end29.i.i82_crit_edge
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %47, align 4
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.end29.i.i82, %if.end12.i.i72.if.end.i85_crit_edge
  %state.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 1
  %call.i75.i83 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i76.i84 = icmp eq ptr %call.i75.i83, null
  br i1 %cmp.i76.i84, label %if.end.i85.out_free_crit_edge, label %if.end.i79.i88, !prof !32

if.end.i85.out_free_crit_edge:                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i79.i88:                                   ; preds = %if.end.i85
  %57 = ptrtoint ptr %call.i75.i83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call.i75.i83, align 4
  %call3.i77.i86 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %58) #6
  %cmp4.i78.i87 = icmp eq ptr %call3.i77.i86, null
  br i1 %cmp4.i78.i87, label %if.end.i79.i88.out_free_crit_edge, label %if.end12.i81.i90, !prof !32

if.end.i79.i88.out_free_crit_edge:                ; preds = %if.end.i79.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i81.i90:                                 ; preds = %if.end.i79.i88
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp13.i80.i89 = icmp eq i32 %60, 0
  br i1 %cmp13.i80.i89, label %if.end12.i81.i90.if.end4.i_crit_edge, label %if.end15.i83.i92

if.end12.i81.i90.if.end4.i_crit_edge:             ; preds = %if.end12.i81.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end15.i83.i92:                                 ; preds = %if.end12.i81.i90
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp17.i82.i91 = icmp ugt i32 %58, %60
  br i1 %cmp17.i82.i91, label %if.end15.i83.i92.out_free_crit_edge, label %if.end19.i86.i95

if.end15.i83.i92.out_free_crit_edge:              ; preds = %if.end15.i83.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i86.i95:                                 ; preds = %if.end15.i83.i92
  %data.i84.i93 = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %data.i84.i93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i84.i93, align 4
  %tobool20.not.i85.i94 = icmp eq ptr %62, null
  br i1 %tobool20.not.i85.i94, label %if.then21.i89.i98, label %if.else.i90.i99

if.then21.i89.i98:                                ; preds = %if.end19.i86.i95
  %call22.i87.i96 = tail call ptr @kmemdup(ptr noundef nonnull %call3.i77.i86, i32 noundef %58, i32 noundef 3264) #6
  %63 = ptrtoint ptr %data.i84.i93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call22.i87.i96, ptr %data.i84.i93, align 4
  %tobool25.not.i88.i97 = icmp eq ptr %call22.i87.i96, null
  br i1 %tobool25.not.i88.i97, label %if.then21.i89.i98.out_free_crit_edge, label %if.then21.i89.i98.if.end29.i91.i100_crit_edge

if.then21.i89.i98.if.end29.i91.i100_crit_edge:    ; preds = %if.then21.i89.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i91.i100

if.then21.i89.i98.out_free_crit_edge:             ; preds = %if.then21.i89.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i90.i99:                                  ; preds = %if.end19.i86.i95
  call void @__sanitizer_cov_trace_pc() #8
  %64 = call ptr @memcpy(ptr %62, ptr %call3.i77.i86, i32 %58)
  br label %if.end29.i91.i100

if.end29.i91.i100:                                ; preds = %if.else.i90.i99, %if.then21.i89.i98.if.end29.i91.i100_crit_edge
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %58, ptr %state.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end29.i91.i100, %if.end12.i81.i90.if.end4.i_crit_edge
  %call.i94.i101 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i95.i102 = icmp eq ptr %call.i94.i101, null
  br i1 %cmp.i95.i102, label %if.end4.i.out_free_crit_edge, label %if.end8.i, !prof !32

if.end4.i.out_free_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end8.i:                                        ; preds = %if.end4.i
  %need_release.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 2
  %66 = ptrtoint ptr %call.i94.i101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call.i94.i101, align 4
  %68 = ptrtoint ptr %need_release.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %need_release.i, align 4
  %mech.i103 = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 3
  %call.i98.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i99.i = icmp eq ptr %call.i98.i, null
  br i1 %cmp.i99.i, label %if.end8.i.out_free_crit_edge, label %if.end.i102.i, !prof !32

if.end8.i.out_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i102.i:                                    ; preds = %if.end8.i
  %69 = ptrtoint ptr %call.i98.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call.i98.i, align 4
  %call3.i100.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %70) #6
  %cmp4.i101.i = icmp eq ptr %call3.i100.i, null
  br i1 %cmp4.i101.i, label %if.end.i102.i.out_free_crit_edge, label %if.end12.i104.i, !prof !32

if.end.i102.i.out_free_crit_edge:                 ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end12.i104.i:                                  ; preds = %if.end.i102.i
  %71 = ptrtoint ptr %mech.i103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mech.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp13.i103.i = icmp eq i32 %72, 0
  br i1 %cmp13.i103.i, label %if.end12.i104.i.if.end12.i_crit_edge, label %if.end15.i106.i

if.end12.i104.i.if.end12.i_crit_edge:             ; preds = %if.end12.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end15.i106.i:                                  ; preds = %if.end12.i104.i
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp17.i105.i = icmp ugt i32 %70, %72
  br i1 %cmp17.i105.i, label %if.end15.i106.i.out_free_crit_edge, label %if.end19.i109.i

if.end15.i106.i.out_free_crit_edge:               ; preds = %if.end15.i106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end19.i109.i:                                  ; preds = %if.end15.i106.i
  %data.i107.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %data.i107.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i107.i, align 4
  %tobool20.not.i108.i = icmp eq ptr %74, null
  br i1 %tobool20.not.i108.i, label %if.then21.i112.i, label %if.else.i113.i

if.then21.i112.i:                                 ; preds = %if.end19.i109.i
  %call22.i110.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i100.i, i32 noundef %70, i32 noundef 3264) #6
  %75 = ptrtoint ptr %data.i107.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call22.i110.i, ptr %data.i107.i, align 4
  %tobool25.not.i111.i = icmp eq ptr %call22.i110.i, null
  br i1 %tobool25.not.i111.i, label %if.then21.i112.i.out_free_crit_edge, label %if.then21.i112.i.if.end29.i114.i_crit_edge

if.then21.i112.i.if.end29.i114.i_crit_edge:       ; preds = %if.then21.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i114.i

if.then21.i112.i.out_free_crit_edge:              ; preds = %if.then21.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.else.i113.i:                                   ; preds = %if.end19.i109.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = call ptr @memcpy(ptr %74, ptr %call3.i100.i, i32 %70)
  br label %if.end29.i114.i

if.end29.i114.i:                                  ; preds = %if.else.i113.i, %if.then21.i112.i.if.end29.i114.i_crit_edge
  %77 = ptrtoint ptr %mech.i103 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %70, ptr %mech.i103, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end29.i114.i, %if.end12.i104.i.if.end12.i_crit_edge
  %src_name.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 4
  %call13.i = tail call fastcc i32 @gssx_dec_name(ptr noundef %xdr, ptr noundef %src_name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i104, label %if.end12.i.out_free_crit_edge

if.end12.i.out_free_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end16.i104:                                    ; preds = %if.end12.i
  %targ_name.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 5
  %call17.i = tail call fastcc i32 @gssx_dec_name(ptr noundef %xdr, ptr noundef %targ_name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i104.out_free_crit_edge

if.end16.i104.out_free_crit_edge:                 ; preds = %if.end16.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end20.i:                                       ; preds = %if.end16.i104
  %call21.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #6
  %cmp.i105 = icmp eq ptr %call21.i, null
  br i1 %cmp.i105, label %if.end20.i.out_free_crit_edge, label %if.end25.i106, !prof !32

if.end20.i.out_free_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end25.i106:                                    ; preds = %if.end20.i
  %lifetime.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 6
  %78 = ptrtoint ptr %call21.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %call21.i, align 1
  %80 = ptrtoint ptr %lifetime.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %lifetime.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %call21.i, i32 2
  %ctx_flags.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 7
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %add.ptr.i.i, align 1
  %83 = ptrtoint ptr %ctx_flags.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %ctx_flags.i, align 8
  %call.i118.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i119.i = icmp eq ptr %call.i118.i, null
  br i1 %cmp.i119.i, label %if.end25.i106.out_free_crit_edge, label %if.end31.i, !prof !32

if.end25.i106.out_free_crit_edge:                 ; preds = %if.end25.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end31.i:                                       ; preds = %if.end25.i106
  %locally_initiated.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 8
  %84 = ptrtoint ptr %call.i118.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call.i118.i, align 4
  %86 = ptrtoint ptr %locally_initiated.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %locally_initiated.i, align 4
  %call.i123.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i124.i = icmp eq ptr %call.i123.i, null
  br i1 %cmp.i124.i, label %if.end31.i.out_free_crit_edge, label %gssx_dec_ctx.exit, !prof !32

if.end31.i.out_free_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

gssx_dec_ctx.exit:                                ; preds = %if.end31.i
  %open.i = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 9
  %87 = ptrtoint ptr %call.i123.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call.i123.i, align 4
  %89 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %open.i, align 4
  %options.i107 = getelementptr inbounds %struct.gssx_ctx, ptr %47, i32 0, i32 10
  %call36.i = tail call fastcc i32 @dummy_dec_opt_array(ptr noundef %xdr, ptr noundef %options.i107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool12.not = icmp eq i32 %call36.i, 0
  br i1 %tobool12.not, label %gssx_dec_ctx.exit.if.end16_crit_edge, label %gssx_dec_ctx.exit.out_free_crit_edge

gssx_dec_ctx.exit.out_free_crit_edge:             ; preds = %gssx_dec_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

gssx_dec_ctx.exit.if.end16_crit_edge:             ; preds = %gssx_dec_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %context_handle15 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %context_handle15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %gssx_dec_ctx.exit.if.end16_crit_edge
  %call.i109 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i110 = icmp eq ptr %call.i109, null
  br i1 %cmp.i110, label %if.end16.out_free_crit_edge, label %if.end20, !prof !32

if.end16.out_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end20:                                         ; preds = %if.end16
  %91 = ptrtoint ptr %call.i109 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool21.not = icmp eq i32 %92, 0
  %output_token28 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %data, i32 0, i32 2
  br i1 %tobool21.not, label %if.else27, label %if.then22

if.then22:                                        ; preds = %if.end20
  %93 = ptrtoint ptr %output_token28 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %output_token28, align 4
  %call23 = tail call fastcc i32 @gssx_dec_buffer(ptr noundef %xdr, ptr noundef %94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end29_crit_edge, label %if.then22.out_free_crit_edge

if.then22.out_free_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.else27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %output_token28 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %output_token28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then22.if.end29_crit_edge
  %call.i114 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i115 = icmp eq ptr %call.i114, null
  br i1 %cmp.i115, label %if.end29.out_free_crit_edge, label %if.end33, !prof !32

if.end29.out_free_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end33:                                         ; preds = %if.end29
  %96 = ptrtoint ptr %call.i114 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool34.not = icmp eq i32 %97, 0
  br i1 %tobool34.not, label %if.end36, label %if.end33.out_free_crit_edge

if.end33.out_free_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %options = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %data, i32 0, i32 3
  %call37 = tail call fastcc i32 @gssx_dec_option_array(ptr noundef %xdr, ptr noundef %options)
  br label %out_free

out_free:                                         ; preds = %if.end36, %if.end33.out_free_crit_edge, %if.end29.out_free_crit_edge, %if.then22.out_free_crit_edge, %if.end16.out_free_crit_edge, %gssx_dec_ctx.exit.out_free_crit_edge, %if.end31.i.out_free_crit_edge, %if.end25.i106.out_free_crit_edge, %if.end20.i.out_free_crit_edge, %if.end16.i104.out_free_crit_edge, %if.end12.i.out_free_crit_edge, %if.then21.i112.i.out_free_crit_edge, %if.end15.i106.i.out_free_crit_edge, %if.end.i102.i.out_free_crit_edge, %if.end8.i.out_free_crit_edge, %if.end4.i.out_free_crit_edge, %if.then21.i89.i98.out_free_crit_edge, %if.end15.i83.i92.out_free_crit_edge, %if.end.i79.i88.out_free_crit_edge, %if.end.i85.out_free_crit_edge, %if.then21.i.i80.out_free_crit_edge, %if.end15.i.i74.out_free_crit_edge, %if.end.i.i70.out_free_crit_edge, %if.then10.out_free_crit_edge, %if.end4.out_free_crit_edge, %gssx_dec_status.exit.out_free_crit_edge, %if.then21.i108.i.out_free_crit_edge, %if.end15.i102.i.out_free_crit_edge, %if.end.i98.i.out_free_crit_edge, %if.end25.i.out_free_crit_edge, %if.then21.i89.i.out_free_crit_edge, %if.end15.i83.i.out_free_crit_edge, %if.end.i79.i.out_free_crit_edge, %if.end21.i.out_free_crit_edge, %if.then21.i70.i.out_free_crit_edge, %if.end15.i64.i.out_free_crit_edge, %if.end.i60.i.out_free_crit_edge, %if.end16.i.out_free_crit_edge, %if.end6.i.out_free_crit_edge, %if.then21.i.i.out_free_crit_edge, %if.end15.i.i.out_free_crit_edge, %if.end.i.i.out_free_crit_edge, %if.end.i.out_free_crit_edge, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call30.i, %gssx_dec_status.exit.out_free_crit_edge ], [ %call36.i, %gssx_dec_ctx.exit.out_free_crit_edge ], [ %call23, %if.then22.out_free_crit_edge ], [ %call37, %if.end36 ], [ -22, %if.end33.out_free_crit_edge ], [ -28, %if.end4.out_free_crit_edge ], [ -28, %if.end16.out_free_crit_edge ], [ -28, %if.end29.out_free_crit_edge ], [ -28, %if.end25.i.out_free_crit_edge ], [ -28, %if.end.i98.i.out_free_crit_edge ], [ -28, %if.end15.i102.i.out_free_crit_edge ], [ -12, %if.then21.i108.i.out_free_crit_edge ], [ -28, %if.end21.i.out_free_crit_edge ], [ -28, %if.end.i79.i.out_free_crit_edge ], [ -28, %if.end15.i83.i.out_free_crit_edge ], [ -12, %if.then21.i89.i.out_free_crit_edge ], [ -28, %if.end16.i.out_free_crit_edge ], [ -28, %if.end.i60.i.out_free_crit_edge ], [ -28, %if.end15.i64.i.out_free_crit_edge ], [ -12, %if.then21.i70.i.out_free_crit_edge ], [ -28, %if.end.i.out_free_crit_edge ], [ -28, %if.end.i.i.out_free_crit_edge ], [ -28, %if.end15.i.i.out_free_crit_edge ], [ -12, %if.then21.i.i.out_free_crit_edge ], [ -28, %if.end6.i.out_free_crit_edge ], [ -28, %if.end.out_free_crit_edge ], [ -28, %if.end8.i.out_free_crit_edge ], [ -28, %if.end.i102.i.out_free_crit_edge ], [ -28, %if.end15.i106.i.out_free_crit_edge ], [ -12, %if.then21.i112.i.out_free_crit_edge ], [ -28, %if.end.i85.out_free_crit_edge ], [ -28, %if.end.i79.i88.out_free_crit_edge ], [ -28, %if.end15.i83.i92.out_free_crit_edge ], [ -12, %if.then21.i89.i98.out_free_crit_edge ], [ -28, %if.then10.out_free_crit_edge ], [ -28, %if.end.i.i70.out_free_crit_edge ], [ -28, %if.end15.i.i74.out_free_crit_edge ], [ -12, %if.then21.i.i80.out_free_crit_edge ], [ -28, %if.end31.i.out_free_crit_edge ], [ -28, %if.end25.i106.out_free_crit_edge ], [ -28, %if.end4.i.out_free_crit_edge ], [ -28, %if.end20.i.out_free_crit_edge ], [ %call17.i, %if.end16.i104.out_free_crit_edge ], [ %call13.i, %if.end12.i.out_free_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_buffer(ptr noundef %xdr, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call3 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #6
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end12, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp eq i32 %3, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp17 = icmp ugt i32 %1, %3
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %call22 = tail call ptr @kmemdup(ptr noundef nonnull %call3, i32 noundef %1, i32 noundef 3264) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22, ptr %data, align 4
  %tobool25.not = icmp eq ptr %call22, null
  br i1 %tobool25.not, label %if.then21.cleanup_crit_edge, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr %5, ptr %call3, i32 %1)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then21.if.end29_crit_edge
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -28, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -28, %if.end15.cleanup_crit_edge ], [ -12, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_option_array(ptr noundef %xdr, ptr nocapture noundef %oa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup69_crit_edge, label %if.end, !prof !32

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end.cleanup69_crit_edge, label %if.end5

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %oa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %oa, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 16) #10
  %data = getelementptr inbounds %struct.gssx_option_array, ptr %oa, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %data, align 4
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end5.cleanup69_crit_edge, label %if.end11

if.end5.cleanup69_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end11:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #10
  %tobool13.not = icmp eq ptr %call7.i.i, null
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br i1 %tobool13.not, label %if.then14, label %for.body.lr.ph

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %7) #6
  br label %cleanup69

for.body.lr.ph:                                   ; preds = %if.end11
  %data18 = getelementptr inbounds %struct.xdr_netobj, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.6, ptr %data18, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %10, align 4
  %12 = load ptr, ptr %data, align 4
  %data24 = getelementptr inbounds %struct.gssx_option, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %data24, align 4
  %14 = load ptr, ptr %data, align 4
  %value27 = getelementptr inbounds %struct.gssx_option, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %value27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %value27, align 4
  %cr_gid.i = getelementptr inbounds %struct.svc_cred, ptr %call7.i.i, i32 0, i32 1
  %cr_group_info.i = getelementptr inbounds %struct.svc_cred, ptr %call7.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call30 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %for.body.cleanup69_crit_edge, label %if.end39, !prof !32

for.body.cleanup69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end39:                                         ; preds = %for.body
  %16 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call30, align 4
  %call41 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %17) #6
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.end39.cleanup69_crit_edge, label %if.end50, !prof !32

if.end39.cleanup69_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %17)
  %cmp51 = icmp eq i32 %17, 15
  br i1 %cmp51, label %land.lhs.true, label %if.end50.if.else_crit_edge

if.end50.if.else_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end50
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %call41, ptr noundef nonnull dereferenceable(15) @.str.6, i32 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp53 = icmp eq i32 %bcmp, 0
  br i1 %cmp53, label %if.then54, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then54:                                        ; preds = %land.lhs.true
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then54.cleanup69_crit_edge, label %if.end.i, !prof !32

if.then54.cleanup69_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end.i:                                         ; preds = %if.then54
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262156, i32 %19)
  %cmp3.i = icmp ugt i32 %19, 262156
  br i1 %cmp3.i, label %if.end.i.cleanup69_crit_edge, label %if.end5.i

if.end.i.cleanup69_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.cleanup69_crit_edge, label %if.end9.i

if.end5.i.cleanup69_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end9.i:                                        ; preds = %if.end5.i
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i.i, align 4
  %call11.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %21) #6
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call11.i, ptr %call7.i.i, align 8
  %call.i75.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i76.i = icmp eq ptr %call.i75.i, null
  br i1 %tobool.not.i76.i, label %if.end9.i.cleanup69_crit_edge, label %if.end15.i

if.end9.i.cleanup69_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end15.i:                                       ; preds = %if.end9.i
  %23 = ptrtoint ptr %call.i75.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i75.i, align 4
  %call17.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %24) #6
  %25 = ptrtoint ptr %cr_gid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call17.i, ptr %cr_gid.i, align 4
  %call.i80.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i81.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool.not.i81.i, label %if.end15.i.cleanup69_crit_edge, label %if.end22.i

if.end15.i.cleanup69_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end22.i:                                       ; preds = %if.end15.i
  %26 = ptrtoint ptr %call.i80.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i80.i, align 4
  %add.i = shl i32 %27, 2
  %mul.i = add i32 %add.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %19)
  %cmp23.not.i = icmp eq i32 %mul.i, %19
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end22.i.cleanup69_crit_edge

if.end22.i.cleanup69_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end25.i:                                       ; preds = %if.end22.i
  %call26.i = tail call ptr @groups_alloc(i32 noundef %27) #6
  %28 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call26.i, ptr %cr_group_info.i, align 8
  %cmp28.i = icmp eq ptr %call26.i, null
  br i1 %cmp28.i, label %if.end25.i.cleanup69_crit_edge, label %for.cond.preheader.i

if.end25.i.cleanup69_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.cond.preheader.i:                             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp31114.not.i = icmp eq i32 %27, 0
  br i1 %cmp31114.not.i, label %for.cond.preheader.i.if.end58_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end58_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0115.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i85.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i86.i = icmp eq ptr %call.i85.i, null
  br i1 %tobool.not.i86.i, label %for.body.i.out_free_groups.i_crit_edge, label %if.end35.i

for.body.i.out_free_groups.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_groups.i

if.end35.i:                                       ; preds = %for.body.i
  %29 = ptrtoint ptr %call.i85.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i85.i, align 4
  %call37.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37.i)
  %cmp.i.not.i = icmp eq i32 %call37.i, -1
  br i1 %cmp.i.not.i, label %if.end35.i.out_free_groups.i_crit_edge, label %for.inc.i

if.end35.i.out_free_groups.i_crit_edge:           ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_groups.i

for.inc.i:                                        ; preds = %if.end35.i
  %31 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cr_group_info.i, align 8
  %arrayidx.i = getelementptr %struct.group_info, ptr %32, i32 0, i32 2, i32 %i.0115.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call37.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %for.inc.i.if.end58_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end58_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

out_free_groups.i:                                ; preds = %if.end35.i.out_free_groups.i_crit_edge, %for.body.i.out_free_groups.i_crit_edge
  %34 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cr_group_info.i, align 8
  tail call void @groups_free(ptr noundef %35) #6
  br label %cleanup69

if.end58:                                         ; preds = %for.inc.i.if.end58_crit_edge, %for.cond.preheader.i.if.end58_crit_edge
  %36 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cr_group_info.i, align 8
  tail call void @groups_sort(ptr noundef %37) #6
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %value61 = getelementptr inbounds %struct.gssx_option, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %value61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %value61, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end50.if.else_crit_edge
  %call.i99 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i100 = icmp eq ptr %call.i99, null
  br i1 %cmp.i100, label %if.else.cleanup69_crit_edge, label %if.end.i101, !prof !32

if.else.cleanup69_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end.i101:                                      ; preds = %if.else
  %41 = ptrtoint ptr %call.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i99, align 4
  %call3.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %42) #6
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %if.end.i101.cleanup69_crit_edge, label %if.end.i101.for.inc_crit_edge, !prof !32

if.end.i101.for.inc_crit_edge:                    ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i101.cleanup69_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.inc:                                          ; preds = %if.end.i101.for.inc_crit_edge, %if.end58
  %inc = add nuw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup69_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

cleanup69:                                        ; preds = %for.inc.cleanup69_crit_edge, %if.end.i101.cleanup69_crit_edge, %if.else.cleanup69_crit_edge, %out_free_groups.i, %if.end25.i.cleanup69_crit_edge, %if.end22.i.cleanup69_crit_edge, %if.end15.i.cleanup69_crit_edge, %if.end9.i.cleanup69_crit_edge, %if.end5.i.cleanup69_crit_edge, %if.end.i.cleanup69_crit_edge, %if.then54.cleanup69_crit_edge, %if.end39.cleanup69_crit_edge, %for.body.cleanup69_crit_edge, %if.then14, %if.end5.cleanup69_crit_edge, %if.end.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.2 = phi i32 [ -12, %if.then14 ], [ -28, %entry.cleanup69_crit_edge ], [ 0, %if.end.cleanup69_crit_edge ], [ -12, %if.end5.cleanup69_crit_edge ], [ -22, %out_free_groups.i ], [ 0, %for.inc.cleanup69_crit_edge ], [ -28, %for.body.cleanup69_crit_edge ], [ -28, %if.end39.cleanup69_crit_edge ], [ -28, %if.then54.cleanup69_crit_edge ], [ -28, %if.end.i.cleanup69_crit_edge ], [ -22, %if.end22.i.cleanup69_crit_edge ], [ -12, %if.end25.i.cleanup69_crit_edge ], [ -22, %if.end5.i.cleanup69_crit_edge ], [ -22, %if.end9.i.cleanup69_crit_edge ], [ -22, %if.end15.i.cleanup69_crit_edge ], [ -28, %if.else.cleanup69_crit_edge ], [ -28, %if.end.i101.cleanup69_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gssx_enc_name(ptr noundef %xdr, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 4
  %add.i = add i32 %1, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.xdr_netobj, ptr %name, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 4
  %call2.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i, ptr noundef %3, i32 noundef %5) #6
  %call.i34 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call2.i36 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i34, ptr noundef null, i32 noundef 0) #6
  %call.i41 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i42 = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i42, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call2.i43 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i41, ptr noundef null, i32 noundef 0) #6
  %call.i48 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i49, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call2.i50 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call.i48, ptr noundef null, i32 noundef 0) #6
  %call.i54 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %call.i54 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call.i54, align 4
  %call.i59 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i60 = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i60, label %if.end16.cleanup_crit_edge, label %if.end2.i62

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2.i62:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i59 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call.i59, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i62, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -28, %if.end4.cleanup_crit_edge ], [ -28, %if.end8.cleanup_crit_edge ], [ 0, %if.end2.i62 ], [ -28, %if.end16.cleanup_crit_edge ], [ -28, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dummy_dec_opt_array(ptr noundef %xdr, ptr nocapture noundef writeonly %oa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp313.not = icmp eq i32 %1, 0
  br i1 %cmp313.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %gssx_dec_option.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %gssx_dec_option.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %for.body.gssx_dec_option.exit_crit_edge, label %if.end.i.i, !prof !32

for.body.gssx_dec_option.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_option.exit

if.end.i.i:                                       ; preds = %for.body
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %call3.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #6
  %cmp4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp4.i.i, label %if.end.i.i.gssx_dec_option.exit_crit_edge, label %if.end.i, !prof !32

if.end.i.i.gssx_dec_option.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_option.exit

if.end.i:                                         ; preds = %if.end.i.i
  %call.i1.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i2.i = icmp eq ptr %call.i1.i, null
  br i1 %cmp.i2.i, label %if.end.i.gssx_dec_option.exit_crit_edge, label %if.end.i5.i, !prof !32

if.end.i.gssx_dec_option.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_option.exit

if.end.i5.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i1.i, align 4
  %call3.i3.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %5) #6
  br label %gssx_dec_option.exit

gssx_dec_option.exit:                             ; preds = %if.end.i5.i, %if.end.i.gssx_dec_option.exit_crit_edge, %if.end.i.i.gssx_dec_option.exit_crit_edge, %for.body.gssx_dec_option.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %gssx_dec_option.exit.for.end_crit_edge, label %gssx_dec_option.exit.for.body_crit_edge

gssx_dec_option.exit.for.body_crit_edge:          ; preds = %gssx_dec_option.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

gssx_dec_option.exit.for.end_crit_edge:           ; preds = %gssx_dec_option.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %gssx_dec_option.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %6 = ptrtoint ptr %oa to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %oa, align 4
  %data = getelementptr inbounds %struct.gssx_option_array, ptr %oa, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_name(ptr noundef %xdr, ptr nocapture noundef %name) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca %struct.gssx_name_attr, align 4
  %dummy_option_array = alloca %struct.gssx_option_array, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_option_array) #6
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %call3.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #6
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i, !prof !32

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp eq i32 %3, 0
  br i1 %cmp13.i, label %if.end12.i.if.end_crit_edge, label %if.end15.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end15.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp17.i = icmp ugt i32 %1, %3
  br i1 %cmp17.i, label %if.end15.i.cleanup_crit_edge, label %if.end19.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  %data.i = getelementptr inbounds %struct.xdr_netobj, ptr %name, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool20.not.i = icmp eq ptr %5, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end19.i
  %call22.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i, i32 noundef %1, i32 noundef 3264) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22.i, ptr %data.i, align 4
  %tobool25.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool25.not.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.if.end29.i_crit_edge

if.then21.i.if.end29.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr %5, ptr %call3.i, i32 %1)
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then21.i.if.end29.i_crit_edge
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %name, align 4
  br label %if.end

if.end:                                           ; preds = %if.end29.i, %if.end12.i.if.end_crit_edge
  %call.i36 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i37 = icmp eq ptr %call.i36, null
  br i1 %cmp.i37, label %if.end.cleanup_crit_edge, label %if.end.i40, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i40:                                       ; preds = %if.end
  %9 = ptrtoint ptr %call.i36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i36, align 4
  %call3.i38 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %10) #6
  %cmp4.i39 = icmp eq ptr %call3.i38, null
  br i1 %cmp4.i39, label %if.end.i40.cleanup_crit_edge, label %if.end4, !prof !32

if.end.i40.cleanup_crit_edge:                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i40
  %call.i55 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i56 = icmp eq ptr %call.i55, null
  br i1 %cmp.i56, label %if.end4.cleanup_crit_edge, label %if.end.i59, !prof !32

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i59:                                       ; preds = %if.end4
  %11 = ptrtoint ptr %call.i55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i55, align 4
  %call3.i57 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %12) #6
  %cmp4.i58 = icmp eq ptr %call3.i57, null
  br i1 %cmp4.i58, label %if.end.i59.cleanup_crit_edge, label %if.end8, !prof !32

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end.i59
  %call.i74 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i75 = icmp eq ptr %call.i74, null
  br i1 %cmp.i75, label %if.end8.cleanup_crit_edge, label %if.end.i78, !prof !32

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i78:                                       ; preds = %if.end8
  %13 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i74, align 4
  %call3.i76 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %14) #6
  %cmp4.i77 = icmp eq ptr %call3.i76, null
  br i1 %cmp4.i77, label %if.end.i78.cleanup_crit_edge, label %if.end12, !prof !32

if.end.i78.cleanup_crit_edge:                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end.i78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dummy.i) #6
  %15 = call ptr @memset(ptr %dummy.i, i32 0, i32 24)
  %call.i93 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i94 = icmp eq ptr %call.i93, null
  br i1 %cmp.i94, label %dummy_dec_nameattr_array.exit, label %if.end.i95, !prof !32

if.end.i95:                                       ; preds = %if.end12
  %16 = ptrtoint ptr %call.i93 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp313.not.i = icmp eq i32 %17, 0
  br i1 %cmp313.not.i, label %if.end.i95.if.end16_crit_edge, label %for.body.lr.ph.i

if.end.i95.if.end16_crit_edge:                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %if.end.i95
  %data.i.i.i = getelementptr inbounds %struct.xdr_netobj, ptr %dummy.i, i32 0, i32 1
  %value.i.i = getelementptr inbounds %struct.gssx_name_attr, ptr %dummy.i, i32 0, i32 1
  %data.i10.i.i = getelementptr inbounds %struct.gssx_name_attr, ptr %dummy.i, i32 0, i32 1, i32 1
  %extensions.i.i = getelementptr inbounds %struct.gssx_name_attr, ptr %dummy.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %gssx_dec_name_attr.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %gssx_dec_name_attr.exit.i.for.body.i_crit_edge ]
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i.i, label %for.body.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end.i.i.i, !prof !32

for.body.i.gssx_dec_name_attr.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  %18 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i.i.i, align 4
  %call3.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %19) #6
  %cmp4.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp4.i.i.i, label %if.end.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end12.i.i.i, !prof !32

if.end.i.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  %20 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dummy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp13.i.i.i, label %if.end12.i.i.i.if.end.i.i_crit_edge, label %if.end15.i.i.i

if.end12.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end15.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp17.i.i.i = icmp ugt i32 %19, %21
  br i1 %cmp17.i.i.i, label %if.end15.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end19.i.i.i

if.end15.i.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end19.i.i.i:                                   ; preds = %if.end15.i.i.i
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %tobool20.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool20.not.i.i.i, label %if.then21.i.i.i, label %if.else.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end19.i.i.i
  %call22.i.i.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i.i.i, i32 noundef %19, i32 noundef 3264) #6
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22.i.i.i, ptr %data.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %call22.i.i.i, null
  br i1 %tobool25.not.i.i.i, label %if.then21.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.then21.i.i.i.if.end29.i.i.i_crit_edge

if.then21.i.i.i.if.end29.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i.i

if.then21.i.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.else.i.i.i:                                    ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = call ptr @memcpy(ptr %23, ptr %call3.i.i.i, i32 %19)
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then21.i.i.i.if.end29.i.i.i_crit_edge
  %26 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %19, ptr %dummy.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end29.i.i.i, %if.end12.i.i.i.if.end.i.i_crit_edge
  %call.i1.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %cmp.i2.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %cmp.i2.i.i, label %if.end.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end.i5.i.i, !prof !32

if.end.i.i.gssx_dec_name_attr.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end.i5.i.i:                                    ; preds = %if.end.i.i
  %27 = ptrtoint ptr %call.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i1.i.i, align 4
  %call3.i3.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %28) #6
  %cmp4.i4.i.i = icmp eq ptr %call3.i3.i.i, null
  br i1 %cmp4.i4.i.i, label %if.end.i5.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end12.i7.i.i, !prof !32

if.end.i5.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end12.i7.i.i:                                  ; preds = %if.end.i5.i.i
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13.i6.i.i = icmp eq i32 %30, 0
  br i1 %cmp13.i6.i.i, label %if.end12.i7.i.i.if.end5.i.i_crit_edge, label %if.end15.i9.i.i

if.end12.i7.i.i.if.end5.i.i_crit_edge:            ; preds = %if.end12.i7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

if.end15.i9.i.i:                                  ; preds = %if.end12.i7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp17.i8.i.i = icmp ugt i32 %28, %30
  br i1 %cmp17.i8.i.i, label %if.end15.i9.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.end19.i12.i.i

if.end15.i9.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.end15.i9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.end19.i12.i.i:                                 ; preds = %if.end15.i9.i.i
  %31 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i10.i.i, align 4
  %tobool20.not.i11.i.i = icmp eq ptr %32, null
  br i1 %tobool20.not.i11.i.i, label %if.then21.i15.i.i, label %if.else.i16.i.i

if.then21.i15.i.i:                                ; preds = %if.end19.i12.i.i
  %call22.i13.i.i = tail call ptr @kmemdup(ptr noundef nonnull %call3.i3.i.i, i32 noundef %28, i32 noundef 3264) #6
  %33 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call22.i13.i.i, ptr %data.i10.i.i, align 4
  %tobool25.not.i14.i.i = icmp eq ptr %call22.i13.i.i, null
  br i1 %tobool25.not.i14.i.i, label %if.then21.i15.i.i.gssx_dec_name_attr.exit.i_crit_edge, label %if.then21.i15.i.i.if.end29.i17.i.i_crit_edge

if.then21.i15.i.i.if.end29.i17.i.i_crit_edge:     ; preds = %if.then21.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i17.i.i

if.then21.i15.i.i.gssx_dec_name_attr.exit.i_crit_edge: ; preds = %if.then21.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gssx_dec_name_attr.exit.i

if.else.i16.i.i:                                  ; preds = %if.end19.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = call ptr @memcpy(ptr %32, ptr %call3.i3.i.i, i32 %28)
  br label %if.end29.i17.i.i

if.end29.i17.i.i:                                 ; preds = %if.else.i16.i.i, %if.then21.i15.i.i.if.end29.i17.i.i_crit_edge
  %35 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %28, ptr %value.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end29.i17.i.i, %if.end12.i7.i.i.if.end5.i.i_crit_edge
  %call6.i.i = call fastcc i32 @dummy_dec_opt_array(ptr noundef %xdr, ptr noundef %extensions.i.i) #6
  br label %gssx_dec_name_attr.exit.i

gssx_dec_name_attr.exit.i:                        ; preds = %if.end5.i.i, %if.then21.i15.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.end15.i9.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.end.i5.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.end.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.then21.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.end15.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, %if.end.i.i.i.gssx_dec_name_attr.exit.i_crit_edge, %for.body.i.gssx_dec_name_attr.exit.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %gssx_dec_name_attr.exit.i.if.end16_crit_edge, label %gssx_dec_name_attr.exit.i.for.body.i_crit_edge

gssx_dec_name_attr.exit.i.for.body.i_crit_edge:   ; preds = %gssx_dec_name_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

gssx_dec_name_attr.exit.i.if.end16_crit_edge:     ; preds = %gssx_dec_name_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

dummy_dec_nameattr_array.exit:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dummy.i) #6
  br label %cleanup

if.end16:                                         ; preds = %gssx_dec_name_attr.exit.i.if.end16_crit_edge, %if.end.i95.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dummy.i) #6
  %call17 = call fastcc i32 @dummy_dec_opt_array(ptr noundef %xdr, ptr noundef nonnull %dummy_option_array)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %dummy_dec_nameattr_array.exit, %if.end.i78.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i59.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.i40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -28, %dummy_dec_nameattr_array.exit ], [ -12, %if.then21.i.cleanup_crit_edge ], [ -28, %if.end15.i.cleanup_crit_edge ], [ -28, %if.end.i.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -28, %if.end.i40.cleanup_crit_edge ], [ -28, %if.end4.cleanup_crit_edge ], [ -28, %if.end.i59.cleanup_crit_edge ], [ -28, %if.end8.cleanup_crit_edge ], [ -28, %if.end.i78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_option_array) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 776, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gssx_enc_accept_sec_context._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gssx_enc_accept_sec_context._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 361, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 363, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 368, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 370, i32 19}
!14 = distinct !{null, !15, !"zero_netobj", i1 false, i1 false}
!15 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 434, i32 26}
!16 = distinct !{null, !17, !"zero_name_attr_array", i1 false, i1 false}
!17 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 436, i32 36}
!18 = distinct !{null, !19, !"zero_option_array", i1 false, i1 false}
!19 = !{!"../net/sunrpc/auth_gss/gss_rpc_xdr.c", i32 438, i32 33}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
