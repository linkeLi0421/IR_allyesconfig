; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs3client.c_pt.bc'
source_filename = "../fs/nfs/nfs3client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs3_set_ds_client\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs3_set_ds_client\09\09\09\09"
module asm "\09.long\09__crc_nfs3_set_ds_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs3_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs3_set_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs3_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.nfs_subversion = type opaque
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.122 }
%union.anon.122 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.nfs_client_initdata = type { i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.136, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.136 = type { %struct.work_struct }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfsacl\00", [25 x i8] zeroinitializer }, align 32
@nfsacl_version = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr null, ptr @nfsacl_version3], [16 x i8] zeroinitializer }, align 32
@nfsacl_rpcstat = internal global { %struct.rpc_stat, [56 x i8] } { %struct.rpc_stat { ptr @nfsacl_program, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nfsacl_program = dso_local constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str, i32 100227, i32 4, ptr @nfsacl_version, ptr @nfsacl_rpcstat, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs_v3 = external dso_local global %struct.nfs_subversion, align 1
@__kstrtab_nfs3_set_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs3_set_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs3_set_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs3_set_ds_client to i32), ptr @__kstrtab_nfs3_set_ds_client, ptr @__kstrtabns_nfs3_set_ds_client }, section "___ksymtab_gpl+nfs3_set_ds_client", align 4
@nfsacl_version3 = external dso_local constant %struct.rpc_version, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 15, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"nfsacl_version\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 10, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"nfsacl_rpcstat\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 9, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"nfsacl_program\00", align 1
@___asan_gen_.11 = private constant [23 x i8] c"../fs/nfs/nfs3client.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 14, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_nfs3_set_ds_client, ptr @.str, ptr @nfsacl_version, ptr @nfsacl_rpcstat, ptr @nfsacl_program], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacl_version to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacl_rpcstat to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacl_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs3_create_server(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs_create_server(ptr noundef %fc) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.out_noacl.i_crit_edge

if.then.out_noacl.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_noacl.i

if.end.i:                                         ; preds = %if.then
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i = tail call ptr @rpc_bind_new_program(ptr noundef %3, ptr noundef nonnull @nfsacl_program, i32 noundef 3) #3
  %client_acl.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %client_acl.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %client_acl.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.out_noacl.i_crit_edge, label %if.end4.i

if.end.i.out_noacl.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_noacl.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 8
  %or.i = or i32 %6, 8
  store i32 %or.i, ptr %caps.i, align 8
  br label %if.end

out_noacl.i:                                      ; preds = %if.end.i.out_noacl.i_crit_edge, %if.then.out_noacl.i_crit_edge
  %caps5.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %caps5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps5.i, align 8
  %and6.i = and i32 %8, -9
  store i32 %and6.i, ptr %caps5.i, align 8
  br label %if.end

if.end:                                           ; preds = %out_noacl.i, %if.end4.i, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs3_clone_server(ptr noundef %source, ptr noundef %fh, ptr noundef %fattr, i32 noundef %flavor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs_clone_server(ptr noundef %source, ptr noundef %fh, ptr noundef %fattr, i32 noundef %flavor) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %client_acl = getelementptr inbounds %struct.nfs_server, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %client_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_acl, align 8
  %cmp.i6 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.out_noacl.i_crit_edge

if.then.out_noacl.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_noacl.i

if.end.i:                                         ; preds = %if.then
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call ptr @rpc_bind_new_program(ptr noundef %5, ptr noundef nonnull @nfsacl_program, i32 noundef 3) #3
  %client_acl.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %client_acl.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %client_acl.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.out_noacl.i_crit_edge, label %if.end4.i

if.end.i.out_noacl.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_noacl.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 8
  %or.i = or i32 %8, 8
  store i32 %or.i, ptr %caps.i, align 8
  br label %if.end

out_noacl.i:                                      ; preds = %if.end.i.out_noacl.i_crit_edge, %if.then.out_noacl.i_crit_edge
  %caps5.i = getelementptr inbounds %struct.nfs_server, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %caps5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps5.i, align 8
  %and6.i = and i32 %10, -9
  store i32 %and6.i, ptr %caps5.i, align 8
  br label %if.end

if.end:                                           ; preds = %out_noacl.i, %if.end4.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs3_set_ds_client(ptr nocapture noundef readonly %mds_srv, ptr noundef %ds_addr, i32 noundef %ds_addrlen, i32 noundef %ds_proto, i32 noundef %ds_timeo, i32 noundef %ds_retrans) #0 align 64 {
entry:
  %ds_timeout = alloca %struct.rpc_timeout, align 4
  %cl_init = alloca %struct.nfs_client_initdata, align 4
  %buf = alloca [49 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ds_timeout) #3
  %0 = call ptr @memset(ptr %ds_timeout, i32 255, i32 20)
  %1 = ptrtoint ptr %mds_srv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mds_srv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cl_init) #3
  %3 = ptrtoint ptr %cl_init to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cl_init, align 4
  %hostname = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 1
  %4 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hostname, align 4
  %addr = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ds_addr, ptr %addr, align 4
  %nodename = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 3
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_rpcclient, align 8
  %cl_nodename = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cl_nodename, ptr %nodename, align 4
  %ip_addr = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 4
  %cl_ipaddr = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 43
  %9 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cl_ipaddr, ptr %ip_addr, align 4
  %addrlen = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 5
  %10 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ds_addrlen, ptr %addrlen, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 6
  %11 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nfs_v3, ptr %nfs_mod, align 4
  %proto = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 7
  %12 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ds_proto, ptr %proto, align 4
  %minorversion = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 8
  %13 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %minorversion, align 4
  %nconnect = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 9
  %14 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nconnect, align 4
  %max_connect = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 10
  %15 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %max_connect, align 4
  %net = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 11
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 44
  %16 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_net, align 8
  %18 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %net, align 4
  %timeparms = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 12
  %19 = ptrtoint ptr %timeparms to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ds_timeout, ptr %timeparms, align 4
  %cred = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 13
  %cred2 = getelementptr inbounds %struct.nfs_server, ptr %mds_srv, i32 0, i32 67
  %20 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred2, align 8
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cred, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %buf) #3
  %23 = call ptr @memset(ptr %buf, i32 255, i32 49)
  %call = call i32 @rpc_ntop(ptr noundef %ds_addr, ptr noundef nonnull %buf, i32 noundef 49) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %hostname, align 4
  %cl_nconnect = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 16
  %25 = ptrtoint ptr %cl_nconnect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cl_nconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp7 = icmp ugt i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ds_proto)
  %cmp8 = icmp eq i32 %ds_proto, 6
  %or.cond = and i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nconnect, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %flags = getelementptr inbounds %struct.nfs_server, ptr %mds_srv, i32 0, i32 8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12.if.end15_crit_edge, label %if.then13

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl_init, align 4
  %or.i = or i32 %31, 1
  store i32 %or.i, ptr %cl_init, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end12.if.end15_crit_edge
  %32 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_init, align 4
  %or.i33 = or i32 %33, 192
  store i32 %or.i33, ptr %cl_init, align 4
  call void @nfs_init_timeout_values(ptr noundef nonnull %ds_timeout, i32 noundef %ds_proto, i32 noundef %ds_timeo, i32 noundef %ds_retrans) #3
  %call18 = call ptr @nfs_get_client(ptr noundef nonnull %cl_init) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call18, %if.end15 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %buf) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cl_init) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ds_timeout) #3
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_bind_new_program(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs3client.c", i32 15, i32 12}
!2 = !{ptr @nfsacl_program, !3, !"nfsacl_program", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs3client.c", i32 14, i32 26}
!4 = !{ptr @__ksymtab_nfs3_set_ds_client, !5, !"__ksymtab_nfs3_set_ds_client", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs3client.c", i32 120, i32 1}
!6 = !{ptr @nfsacl_version, !7, !"nfsacl_version", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs3client.c", i32 10, i32 34}
!8 = !{ptr @nfsacl_rpcstat, !9, !"nfsacl_rpcstat", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs3client.c", i32 9, i32 25}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
