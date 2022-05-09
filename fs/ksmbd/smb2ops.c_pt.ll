; ModuleID = '/llk/IR_all_yes/fs/ksmbd/smb2ops.c_pt.bc'
source_filename = "../fs/ksmbd/smb2ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smb_version_values = type { ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.smb_version_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_cmds = type { ptr }
%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
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

@smb21_server_values = internal global { %struct.smb_version_values, [32 x i8] } { %struct.smb_version_values { ptr @.str, i16 528, i16 2560, i32 4, i32 1048576, i32 1048576, i32 1048576, i32 8192, i32 0, i32 2, i32 1, i32 4, i32 64, i32 120, i32 80, i32 0, i32 1048576, i32 2097152, i16 0, i16 0, i32 56, i32 32, i32 0, i32 32, i32 56, i32 84 }, [32 x i8] zeroinitializer }, align 32
@smb2_0_server_ops = internal global { %struct.smb_version_ops, [36 x i8] } { %struct.smb_version_ops { ptr @get_smb2_cmd_val, ptr @init_smb2_rsp_hdr, ptr @set_smb2_rsp_status, ptr @smb2_allocate_rsp_buf, ptr @smb2_set_rsp_credits, ptr @smb2_check_user_session, ptr @smb2_get_ksmbd_tcon, ptr @smb2_is_sign_req, ptr @smb2_check_sign_req, ptr @smb2_set_sign_rsp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smb2_0_server_cmds = internal global { [19 x %struct.smb_version_cmds], [52 x i8] } { [19 x %struct.smb_version_cmds] [%struct.smb_version_cmds { ptr @smb2_negotiate_request }, %struct.smb_version_cmds { ptr @smb2_sess_setup }, %struct.smb_version_cmds { ptr @smb2_session_logoff }, %struct.smb_version_cmds { ptr @smb2_tree_connect }, %struct.smb_version_cmds { ptr @smb2_tree_disconnect }, %struct.smb_version_cmds { ptr @smb2_open }, %struct.smb_version_cmds { ptr @smb2_close }, %struct.smb_version_cmds { ptr @smb2_flush }, %struct.smb_version_cmds { ptr @smb2_read }, %struct.smb_version_cmds { ptr @smb2_write }, %struct.smb_version_cmds { ptr @smb2_lock }, %struct.smb_version_cmds { ptr @smb2_ioctl }, %struct.smb_version_cmds { ptr @smb2_cancel }, %struct.smb_version_cmds { ptr @smb2_echo }, %struct.smb_version_cmds { ptr @smb2_query_dir }, %struct.smb_version_cmds { ptr @smb2_notify }, %struct.smb_version_cmds { ptr @smb2_query_info }, %struct.smb_version_cmds { ptr @smb2_set_info }, %struct.smb_version_cmds { ptr @smb2_oplock_break }], [52 x i8] zeroinitializer }, align 32
@server_conf = external dso_local local_unnamed_addr global %struct.ksmbd_server_config, align 4
@smb30_server_values = internal global { %struct.smb_version_values, [32 x i8] } { %struct.smb_version_values { ptr @.str.1, i16 768, i16 2560, i32 4, i32 4194304, i32 4194304, i32 1048576, i32 8192, i32 0, i32 2, i32 1, i32 4, i32 64, i32 120, i32 80, i32 0, i32 1048576, i32 2097152, i16 0, i16 0, i32 80, i32 32, i32 32, i32 32, i32 56, i32 84 }, [32 x i8] zeroinitializer }, align 32
@smb3_0_server_ops = internal global { %struct.smb_version_ops, [36 x i8] } { %struct.smb_version_ops { ptr @get_smb2_cmd_val, ptr @init_smb2_rsp_hdr, ptr @set_smb2_rsp_status, ptr @smb2_allocate_rsp_buf, ptr @smb2_set_rsp_credits, ptr @smb2_check_user_session, ptr @smb2_get_ksmbd_tcon, ptr @smb2_is_sign_req, ptr @smb3_check_sign_req, ptr @smb3_set_sign_rsp, ptr @ksmbd_gen_smb30_signingkey, ptr @ksmbd_gen_smb30_encryptionkey, ptr @smb3_is_transform_hdr, ptr @smb3_decrypt_req, ptr @smb3_encrypt_resp }, [36 x i8] zeroinitializer }, align 32
@smb302_server_values = internal global { %struct.smb_version_values, [32 x i8] } { %struct.smb_version_values { ptr @.str.2, i16 770, i16 2560, i32 4, i32 4194304, i32 4194304, i32 1048576, i32 8192, i32 0, i32 2, i32 1, i32 4, i32 64, i32 120, i32 80, i32 0, i32 1048576, i32 2097152, i16 0, i16 0, i32 80, i32 32, i32 32, i32 32, i32 56, i32 84 }, [32 x i8] zeroinitializer }, align 32
@smb311_server_values = internal global { %struct.smb_version_values, [32 x i8] } { %struct.smb_version_values { ptr @.str.3, i16 785, i16 2560, i32 4, i32 4194304, i32 4194304, i32 1048576, i32 8192, i32 0, i32 2, i32 1, i32 4, i32 64, i32 120, i32 80, i32 0, i32 1048576, i32 2097152, i16 0, i16 0, i32 80, i32 32, i32 32, i32 32, i32 56, i32 84 }, [32 x i8] zeroinitializer }, align 32
@smb3_11_server_ops = internal global { %struct.smb_version_ops, [36 x i8] } { %struct.smb_version_ops { ptr @get_smb2_cmd_val, ptr @init_smb2_rsp_hdr, ptr @set_smb2_rsp_status, ptr @smb2_allocate_rsp_buf, ptr @smb2_set_rsp_credits, ptr @smb2_check_user_session, ptr @smb2_get_ksmbd_tcon, ptr @smb2_is_sign_req, ptr @smb3_check_sign_req, ptr @smb3_set_sign_rsp, ptr @ksmbd_gen_smb311_signingkey, ptr @ksmbd_gen_smb311_encryptionkey, ptr @smb3_is_transform_hdr, ptr @smb3_decrypt_req, ptr @smb3_encrypt_resp }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.02\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.1.1\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"smb21_server_values\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 15, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"smb2_0_server_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 122, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"smb2_0_server_cmds\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 171, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"smb30_server_values\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 41, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"smb3_0_server_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 135, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"smb302_server_values\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 68, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"smb311_server_values\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 95, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"smb3_11_server_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 153, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 16, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 42, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 69, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [22 x i8] c"../fs/ksmbd/smb2ops.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 96, i32 20 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @smb21_server_values, ptr @smb2_0_server_ops, ptr @smb2_0_server_cmds, ptr @smb30_server_values, ptr @smb3_0_server_ops, ptr @smb302_server_values, ptr @smb311_server_values, ptr @smb3_11_server_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb21_server_values to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_0_server_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_0_server_cmds to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb30_server_values to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_0_server_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb302_server_values to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_server_values to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_11_server_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_smb2_1_server(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smb21_server_values, ptr %conn, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smb2_0_server_ops, ptr %ops, align 4
  %cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 2
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smb2_0_server_cmds, ptr %cmds, align 8
  %max_cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 3
  %3 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %max_cmds, align 4
  %signing_algorithm = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 46
  %4 = ptrtoint ptr %signing_algorithm to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %signing_algorithm, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @server_conf to i32))
  %5 = load i32, ptr @server_conf, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load i32, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 3), align 4
  %or = or i32 %6, 2
  store i32 %or, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_smb3_0_server(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smb30_server_values, ptr %conn, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smb3_0_server_ops, ptr %ops, align 4
  %cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 2
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smb2_0_server_cmds, ptr %cmds, align 8
  %max_cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 3
  %3 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %max_cmds, align 4
  %signing_algorithm = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 46
  %4 = ptrtoint ptr %signing_algorithm to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %signing_algorithm, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @server_conf to i32))
  %5 = load i32, ptr @server_conf, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load i32, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 3), align 4
  %or = or i32 %6, 2
  store i32 %or, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %cli_cap = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 6
  %7 = ptrtoint ptr %cli_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cli_cap, align 8
  %and4 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end10_crit_edge, label %if.then6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn, align 8
  %capabilities8 = getelementptr inbounds %struct.smb_version_values, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %capabilities8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities8, align 4
  %or9 = or i32 %12, 64
  store i32 %or9, ptr %capabilities8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 8
  %capabilities15 = getelementptr inbounds %struct.smb_version_values, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %capabilities15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities15, align 4
  %or16 = or i32 %16, 8
  store i32 %or16, ptr %capabilities15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_smb3_02_server(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smb302_server_values, ptr %conn, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smb3_0_server_ops, ptr %ops, align 4
  %cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 2
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smb2_0_server_cmds, ptr %cmds, align 8
  %max_cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 3
  %3 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %max_cmds, align 4
  %signing_algorithm = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 46
  %4 = ptrtoint ptr %signing_algorithm to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %signing_algorithm, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @server_conf to i32))
  %5 = load i32, ptr @server_conf, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load i32, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 3), align 4
  %or = or i32 %6, 2
  store i32 %or, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %cli_cap = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 6
  %7 = ptrtoint ptr %cli_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cli_cap, align 8
  %and4 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end10_crit_edge, label %if.then6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn, align 8
  %capabilities8 = getelementptr inbounds %struct.smb_version_values, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %capabilities8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities8, align 4
  %or9 = or i32 %12, 64
  store i32 %or9, ptr %capabilities8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 8
  %capabilities15 = getelementptr inbounds %struct.smb_version_values, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %capabilities15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities15, align 4
  %or16 = or i32 %16, 8
  store i32 %or16, ptr %capabilities15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_smb3_11_server(ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smb311_server_values, ptr %conn, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smb3_11_server_ops, ptr %ops, align 4
  %cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 2
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smb2_0_server_cmds, ptr %cmds, align 8
  %max_cmds = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 3
  %3 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %max_cmds, align 4
  %signing_algorithm = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 46
  %4 = ptrtoint ptr %signing_algorithm to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %signing_algorithm, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @server_conf to i32))
  %5 = load i32, ptr @server_conf, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load i32, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 3), align 4
  %or = or i32 %6, 2
  store i32 %or, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 8
  %capabilities6 = getelementptr inbounds %struct.smb_version_values, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %capabilities6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capabilities6, align 4
  %or7 = or i32 %10, 8
  store i32 %or7, ptr %capabilities6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %preauth_sess_table = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 39
  %11 = ptrtoint ptr %preauth_sess_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %preauth_sess_table, ptr %preauth_sess_table, align 4
  %prev.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 39, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %preauth_sess_table, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_smb2_max_read_size(i32 noundef %sz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %sz, i32 65536)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 8388608)
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 4), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 4), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 4), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_smb2_max_write_size(i32 noundef %sz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %sz, i32 65536)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 8388608)
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 5), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 5), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 5), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 5), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_smb2_max_trans_size(i32 noundef %sz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %sz, i32 65536)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 8388608)
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 6), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 6), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 6), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_smb2_max_credits(i32 noundef %sz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %sz, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb21_server_values, i32 0, i32 7), align 4
  store i32 %sz, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb30_server_values, i32 0, i32 7), align 4
  store i32 %sz, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb302_server_values, i32 0, i32 7), align 4
  store i32 %sz, ptr getelementptr inbounds (%struct.smb_version_values, ptr @smb311_server_values, i32 0, i32 7), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @get_smb2_cmd_val(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_smb2_rsp_hdr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smb2_rsp_status(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_allocate_rsp_buf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_set_rsp_credits(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_check_user_session(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_get_ksmbd_tcon(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smb2_is_sign_req(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_check_sign_req(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb2_set_sign_rsp(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_negotiate_request(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_sess_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_session_logoff(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_tree_connect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_tree_disconnect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_open(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_close(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_flush(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_read(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_write(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_lock(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_ioctl(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_cancel(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_echo(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_query_dir(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_notify(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_query_info(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_set_info(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_oplock_break(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_check_sign_req(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb3_set_sign_rsp(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_gen_smb30_signingkey(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_gen_smb30_encryptionkey(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smb3_is_transform_hdr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_decrypt_req(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_encrypt_resp(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_gen_smb311_signingkey(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_gen_smb311_encryptionkey(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/smb2ops.c", i32 16, i32 20}
!2 = !{ptr @smb21_server_values, !3, !"smb21_server_values", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/smb2ops.c", i32 15, i32 34}
!4 = !{ptr @smb2_0_server_ops, !5, !"smb2_0_server_ops", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/smb2ops.c", i32 122, i32 31}
!6 = !{ptr @smb2_0_server_cmds, !7, !"smb2_0_server_cmds", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/smb2ops.c", i32 171, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/smb2ops.c", i32 42, i32 20}
!10 = !{ptr @smb30_server_values, !11, !"smb30_server_values", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/smb2ops.c", i32 41, i32 34}
!12 = !{ptr @smb3_0_server_ops, !13, !"smb3_0_server_ops", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/smb2ops.c", i32 135, i32 31}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/smb2ops.c", i32 69, i32 20}
!16 = !{ptr @smb302_server_values, !17, !"smb302_server_values", i1 false, i1 false}
!17 = !{!"../fs/ksmbd/smb2ops.c", i32 68, i32 34}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/smb2ops.c", i32 96, i32 20}
!20 = !{ptr @smb311_server_values, !21, !"smb311_server_values", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/smb2ops.c", i32 95, i32 34}
!22 = !{ptr @smb3_11_server_ops, !23, !"smb3_11_server_ops", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/smb2ops.c", i32 153, i32 31}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
