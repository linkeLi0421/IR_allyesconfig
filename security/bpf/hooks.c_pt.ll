; ModuleID = '/llk/IR_all_yes/security/bpf/hooks.c_pt.bc'
source_filename = "../security/bpf/hooks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }

@bpf_lsm_blob_sizes = dso_local global { %struct.lsm_blob_sizes, [36 x i8] } { %struct.lsm_blob_sizes { i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpf\00", [28 x i8] zeroinitializer }, align 32
@__lsm_bpf = internal global %struct.lsm_info { ptr @.str, i32 0, i32 0, ptr null, ptr @bpf_lsm_init, ptr @bpf_lsm_blob_sizes }, section ".lsm_info.init", align 4
@bpf_lsm_hooks = internal global { [241 x %struct.security_hook_list], [1196 x i8] } { [241 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr @security_hook_heads, %union.security_list_options { ptr @bpf_lsm_binder_set_context_mgr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 4), %union.security_list_options { ptr @bpf_lsm_binder_transaction }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 8), %union.security_list_options { ptr @bpf_lsm_binder_transfer_binder }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 12), %union.security_list_options { ptr @bpf_lsm_binder_transfer_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @bpf_lsm_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @bpf_lsm_ptrace_traceme }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 24), %union.security_list_options { ptr @bpf_lsm_capget }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 28), %union.security_list_options { ptr @bpf_lsm_capset }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 32), %union.security_list_options { ptr @bpf_lsm_capable }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 36), %union.security_list_options { ptr @bpf_lsm_quotactl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 40), %union.security_list_options { ptr @bpf_lsm_quota_on }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 44), %union.security_list_options { ptr @bpf_lsm_syslog }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 48), %union.security_list_options { ptr @bpf_lsm_settime }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 52), %union.security_list_options { ptr @bpf_lsm_vm_enough_memory }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 56), %union.security_list_options { ptr @bpf_lsm_bprm_creds_for_exec }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 60), %union.security_list_options { ptr @bpf_lsm_bprm_creds_from_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 64), %union.security_list_options { ptr @bpf_lsm_bprm_check_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 68), %union.security_list_options { ptr @bpf_lsm_bprm_committing_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 72), %union.security_list_options { ptr @bpf_lsm_bprm_committed_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 76), %union.security_list_options { ptr @bpf_lsm_fs_context_dup }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 80), %union.security_list_options { ptr @bpf_lsm_fs_context_parse_param }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 84), %union.security_list_options { ptr @bpf_lsm_sb_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 88), %union.security_list_options { ptr @bpf_lsm_sb_delete }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 92), %union.security_list_options { ptr @bpf_lsm_sb_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 96), %union.security_list_options { ptr @bpf_lsm_sb_free_mnt_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 100), %union.security_list_options { ptr @bpf_lsm_sb_eat_lsm_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 104), %union.security_list_options { ptr @bpf_lsm_sb_mnt_opts_compat }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 108), %union.security_list_options { ptr @bpf_lsm_sb_remount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 112), %union.security_list_options { ptr @bpf_lsm_sb_kern_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 116), %union.security_list_options { ptr @bpf_lsm_sb_show_options }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 120), %union.security_list_options { ptr @bpf_lsm_sb_statfs }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 124), %union.security_list_options { ptr @bpf_lsm_sb_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 128), %union.security_list_options { ptr @bpf_lsm_sb_umount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 132), %union.security_list_options { ptr @bpf_lsm_sb_pivotroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 136), %union.security_list_options { ptr @bpf_lsm_sb_set_mnt_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 140), %union.security_list_options { ptr @bpf_lsm_sb_clone_mnt_opts }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 144), %union.security_list_options { ptr @bpf_lsm_move_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 148), %union.security_list_options { ptr @bpf_lsm_dentry_init_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 152), %union.security_list_options { ptr @bpf_lsm_dentry_create_files_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 156), %union.security_list_options { ptr @bpf_lsm_path_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 160), %union.security_list_options { ptr @bpf_lsm_path_mkdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 164), %union.security_list_options { ptr @bpf_lsm_path_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 168), %union.security_list_options { ptr @bpf_lsm_path_mknod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 172), %union.security_list_options { ptr @bpf_lsm_path_truncate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 176), %union.security_list_options { ptr @bpf_lsm_path_symlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 180), %union.security_list_options { ptr @bpf_lsm_path_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 184), %union.security_list_options { ptr @bpf_lsm_path_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 188), %union.security_list_options { ptr @bpf_lsm_path_chmod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 192), %union.security_list_options { ptr @bpf_lsm_path_chown }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 196), %union.security_list_options { ptr @bpf_lsm_path_chroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 200), %union.security_list_options { ptr @bpf_lsm_path_notify }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 204), %union.security_list_options { ptr @bpf_lsm_inode_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 208), %union.security_list_options { ptr @bpf_lsm_inode_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 212), %union.security_list_options { ptr @bpf_lsm_inode_init_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 216), %union.security_list_options { ptr @bpf_lsm_inode_init_security_anon }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 220), %union.security_list_options { ptr @bpf_lsm_inode_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 224), %union.security_list_options { ptr @bpf_lsm_inode_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 228), %union.security_list_options { ptr @bpf_lsm_inode_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 232), %union.security_list_options { ptr @bpf_lsm_inode_symlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 236), %union.security_list_options { ptr @bpf_lsm_inode_mkdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 240), %union.security_list_options { ptr @bpf_lsm_inode_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 244), %union.security_list_options { ptr @bpf_lsm_inode_mknod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 248), %union.security_list_options { ptr @bpf_lsm_inode_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 252), %union.security_list_options { ptr @bpf_lsm_inode_readlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 256), %union.security_list_options { ptr @bpf_lsm_inode_follow_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 260), %union.security_list_options { ptr @bpf_lsm_inode_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 264), %union.security_list_options { ptr @bpf_lsm_inode_setattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 268), %union.security_list_options { ptr @bpf_lsm_inode_getattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 272), %union.security_list_options { ptr @bpf_lsm_inode_setxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 276), %union.security_list_options { ptr @bpf_lsm_inode_post_setxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 280), %union.security_list_options { ptr @bpf_lsm_inode_getxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 284), %union.security_list_options { ptr @bpf_lsm_inode_listxattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 288), %union.security_list_options { ptr @bpf_lsm_inode_removexattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 292), %union.security_list_options { ptr @bpf_lsm_inode_need_killpriv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 296), %union.security_list_options { ptr @bpf_lsm_inode_killpriv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 300), %union.security_list_options { ptr @bpf_lsm_inode_getsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 304), %union.security_list_options { ptr @bpf_lsm_inode_setsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 308), %union.security_list_options { ptr @bpf_lsm_inode_listsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 312), %union.security_list_options { ptr @bpf_lsm_inode_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 316), %union.security_list_options { ptr @bpf_lsm_inode_copy_up }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 320), %union.security_list_options { ptr @bpf_lsm_inode_copy_up_xattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 324), %union.security_list_options { ptr @bpf_lsm_kernfs_init_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 328), %union.security_list_options { ptr @bpf_lsm_file_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 332), %union.security_list_options { ptr @bpf_lsm_file_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 336), %union.security_list_options { ptr @bpf_lsm_file_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 340), %union.security_list_options { ptr @bpf_lsm_file_ioctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 344), %union.security_list_options { ptr @bpf_lsm_mmap_addr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 348), %union.security_list_options { ptr @bpf_lsm_mmap_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 352), %union.security_list_options { ptr @bpf_lsm_file_mprotect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 356), %union.security_list_options { ptr @bpf_lsm_file_lock }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 360), %union.security_list_options { ptr @bpf_lsm_file_fcntl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 364), %union.security_list_options { ptr @bpf_lsm_file_set_fowner }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 368), %union.security_list_options { ptr @bpf_lsm_file_send_sigiotask }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 372), %union.security_list_options { ptr @bpf_lsm_file_receive }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 376), %union.security_list_options { ptr @bpf_lsm_file_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 380), %union.security_list_options { ptr @bpf_lsm_task_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 384), %union.security_list_options { ptr @bpf_lsm_task_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 388), %union.security_list_options { ptr @bpf_lsm_cred_alloc_blank }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 392), %union.security_list_options { ptr @bpf_lsm_cred_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 396), %union.security_list_options { ptr @bpf_lsm_cred_prepare }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 400), %union.security_list_options { ptr @bpf_lsm_cred_transfer }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 404), %union.security_list_options { ptr @bpf_lsm_cred_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 408), %union.security_list_options { ptr @bpf_lsm_kernel_act_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 412), %union.security_list_options { ptr @bpf_lsm_kernel_create_files_as }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 416), %union.security_list_options { ptr @bpf_lsm_kernel_module_request }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 420), %union.security_list_options { ptr @bpf_lsm_kernel_load_data }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 424), %union.security_list_options { ptr @bpf_lsm_kernel_post_load_data }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 428), %union.security_list_options { ptr @bpf_lsm_kernel_read_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 432), %union.security_list_options { ptr @bpf_lsm_kernel_post_read_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 436), %union.security_list_options { ptr @bpf_lsm_task_fix_setuid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 440), %union.security_list_options { ptr @bpf_lsm_task_fix_setgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 444), %union.security_list_options { ptr @bpf_lsm_task_setpgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 448), %union.security_list_options { ptr @bpf_lsm_task_getpgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 452), %union.security_list_options { ptr @bpf_lsm_task_getsid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 456), %union.security_list_options { ptr @bpf_lsm_current_getsecid_subj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 460), %union.security_list_options { ptr @bpf_lsm_task_getsecid_obj }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 464), %union.security_list_options { ptr @bpf_lsm_task_setnice }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 468), %union.security_list_options { ptr @bpf_lsm_task_setioprio }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 472), %union.security_list_options { ptr @bpf_lsm_task_getioprio }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 476), %union.security_list_options { ptr @bpf_lsm_task_prlimit }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 480), %union.security_list_options { ptr @bpf_lsm_task_setrlimit }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 484), %union.security_list_options { ptr @bpf_lsm_task_setscheduler }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 488), %union.security_list_options { ptr @bpf_lsm_task_getscheduler }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 492), %union.security_list_options { ptr @bpf_lsm_task_movememory }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 496), %union.security_list_options { ptr @bpf_lsm_task_kill }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 500), %union.security_list_options { ptr @bpf_lsm_task_prctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 504), %union.security_list_options { ptr @bpf_lsm_task_to_inode }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 508), %union.security_list_options { ptr @bpf_lsm_ipc_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 512), %union.security_list_options { ptr @bpf_lsm_ipc_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 516), %union.security_list_options { ptr @bpf_lsm_msg_msg_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 520), %union.security_list_options { ptr @bpf_lsm_msg_msg_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 524), %union.security_list_options { ptr @bpf_lsm_msg_queue_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 528), %union.security_list_options { ptr @bpf_lsm_msg_queue_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 532), %union.security_list_options { ptr @bpf_lsm_msg_queue_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 536), %union.security_list_options { ptr @bpf_lsm_msg_queue_msgctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 540), %union.security_list_options { ptr @bpf_lsm_msg_queue_msgsnd }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 544), %union.security_list_options { ptr @bpf_lsm_msg_queue_msgrcv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 548), %union.security_list_options { ptr @bpf_lsm_shm_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 552), %union.security_list_options { ptr @bpf_lsm_shm_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 556), %union.security_list_options { ptr @bpf_lsm_shm_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 560), %union.security_list_options { ptr @bpf_lsm_shm_shmctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 564), %union.security_list_options { ptr @bpf_lsm_shm_shmat }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 568), %union.security_list_options { ptr @bpf_lsm_sem_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 572), %union.security_list_options { ptr @bpf_lsm_sem_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 576), %union.security_list_options { ptr @bpf_lsm_sem_associate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 580), %union.security_list_options { ptr @bpf_lsm_sem_semctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 584), %union.security_list_options { ptr @bpf_lsm_sem_semop }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 588), %union.security_list_options { ptr @bpf_lsm_netlink_send }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 592), %union.security_list_options { ptr @bpf_lsm_d_instantiate }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 596), %union.security_list_options { ptr @bpf_lsm_getprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 600), %union.security_list_options { ptr @bpf_lsm_setprocattr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 604), %union.security_list_options { ptr @bpf_lsm_ismaclabel }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 608), %union.security_list_options { ptr @bpf_lsm_secid_to_secctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 612), %union.security_list_options { ptr @bpf_lsm_secctx_to_secid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 616), %union.security_list_options { ptr @bpf_lsm_release_secctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 620), %union.security_list_options { ptr @bpf_lsm_inode_invalidate_secctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 624), %union.security_list_options { ptr @bpf_lsm_inode_notifysecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 628), %union.security_list_options { ptr @bpf_lsm_inode_setsecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 632), %union.security_list_options { ptr @bpf_lsm_inode_getsecctx }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 636), %union.security_list_options { ptr @bpf_lsm_post_notification }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 640), %union.security_list_options { ptr @bpf_lsm_watch_key }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 644), %union.security_list_options { ptr @bpf_lsm_unix_stream_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 648), %union.security_list_options { ptr @bpf_lsm_unix_may_send }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 652), %union.security_list_options { ptr @bpf_lsm_socket_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 656), %union.security_list_options { ptr @bpf_lsm_socket_post_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 660), %union.security_list_options { ptr @bpf_lsm_socket_socketpair }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 664), %union.security_list_options { ptr @bpf_lsm_socket_bind }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 668), %union.security_list_options { ptr @bpf_lsm_socket_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 672), %union.security_list_options { ptr @bpf_lsm_socket_listen }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 676), %union.security_list_options { ptr @bpf_lsm_socket_accept }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 680), %union.security_list_options { ptr @bpf_lsm_socket_sendmsg }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 684), %union.security_list_options { ptr @bpf_lsm_socket_recvmsg }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 688), %union.security_list_options { ptr @bpf_lsm_socket_getsockname }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 692), %union.security_list_options { ptr @bpf_lsm_socket_getpeername }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 696), %union.security_list_options { ptr @bpf_lsm_socket_getsockopt }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 700), %union.security_list_options { ptr @bpf_lsm_socket_setsockopt }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 704), %union.security_list_options { ptr @bpf_lsm_socket_shutdown }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 708), %union.security_list_options { ptr @bpf_lsm_socket_sock_rcv_skb }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 712), %union.security_list_options { ptr @bpf_lsm_socket_getpeersec_stream }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 716), %union.security_list_options { ptr @bpf_lsm_socket_getpeersec_dgram }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 720), %union.security_list_options { ptr @bpf_lsm_sk_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 724), %union.security_list_options { ptr @bpf_lsm_sk_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 728), %union.security_list_options { ptr @bpf_lsm_sk_clone_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 732), %union.security_list_options { ptr @bpf_lsm_sk_getsecid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 736), %union.security_list_options { ptr @bpf_lsm_sock_graft }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 740), %union.security_list_options { ptr @bpf_lsm_inet_conn_request }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 744), %union.security_list_options { ptr @bpf_lsm_inet_csk_clone }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 748), %union.security_list_options { ptr @bpf_lsm_inet_conn_established }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 752), %union.security_list_options { ptr @bpf_lsm_secmark_relabel_packet }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 756), %union.security_list_options { ptr @bpf_lsm_secmark_refcount_inc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 760), %union.security_list_options { ptr @bpf_lsm_secmark_refcount_dec }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 764), %union.security_list_options { ptr @bpf_lsm_req_classify_flow }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 768), %union.security_list_options { ptr @bpf_lsm_tun_dev_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 772), %union.security_list_options { ptr @bpf_lsm_tun_dev_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 776), %union.security_list_options { ptr @bpf_lsm_tun_dev_create }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 780), %union.security_list_options { ptr @bpf_lsm_tun_dev_attach_queue }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 784), %union.security_list_options { ptr @bpf_lsm_tun_dev_attach }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 788), %union.security_list_options { ptr @bpf_lsm_tun_dev_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 792), %union.security_list_options { ptr @bpf_lsm_sctp_assoc_request }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 796), %union.security_list_options { ptr @bpf_lsm_sctp_bind_connect }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 800), %union.security_list_options { ptr @bpf_lsm_sctp_sk_clone }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 804), %union.security_list_options { ptr @bpf_lsm_ib_pkey_access }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 808), %union.security_list_options { ptr @bpf_lsm_ib_endport_manage_subnet }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 812), %union.security_list_options { ptr @bpf_lsm_ib_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 816), %union.security_list_options { ptr @bpf_lsm_ib_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 820), %union.security_list_options { ptr @bpf_lsm_xfrm_policy_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 824), %union.security_list_options { ptr @bpf_lsm_xfrm_policy_clone_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 828), %union.security_list_options { ptr @bpf_lsm_xfrm_policy_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 832), %union.security_list_options { ptr @bpf_lsm_xfrm_policy_delete_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 836), %union.security_list_options { ptr @bpf_lsm_xfrm_state_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 840), %union.security_list_options { ptr @bpf_lsm_xfrm_state_alloc_acquire }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 844), %union.security_list_options { ptr @bpf_lsm_xfrm_state_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 848), %union.security_list_options { ptr @bpf_lsm_xfrm_state_delete_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 852), %union.security_list_options { ptr @bpf_lsm_xfrm_policy_lookup }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 856), %union.security_list_options { ptr @bpf_lsm_xfrm_state_pol_flow_match }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 860), %union.security_list_options { ptr @bpf_lsm_xfrm_decode_session }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 864), %union.security_list_options { ptr @bpf_lsm_key_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 868), %union.security_list_options { ptr @bpf_lsm_key_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 872), %union.security_list_options { ptr @bpf_lsm_key_permission }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 876), %union.security_list_options { ptr @bpf_lsm_key_getsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 880), %union.security_list_options { ptr @bpf_lsm_audit_rule_init }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 884), %union.security_list_options { ptr @bpf_lsm_audit_rule_known }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 888), %union.security_list_options { ptr @bpf_lsm_audit_rule_match }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 892), %union.security_list_options { ptr @bpf_lsm_audit_rule_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 896), %union.security_list_options { ptr @bpf_lsm_bpf }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 900), %union.security_list_options { ptr @bpf_lsm_bpf_map }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 904), %union.security_list_options { ptr @bpf_lsm_bpf_prog }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 908), %union.security_list_options { ptr @bpf_lsm_bpf_map_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 912), %union.security_list_options { ptr @bpf_lsm_bpf_map_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 916), %union.security_list_options { ptr @bpf_lsm_bpf_prog_alloc_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 920), %union.security_list_options { ptr @bpf_lsm_bpf_prog_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 924), %union.security_list_options { ptr @bpf_lsm_locked_down }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 928), %union.security_list_options { ptr @bpf_lsm_perf_event_open }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 932), %union.security_list_options { ptr @bpf_lsm_perf_event_alloc }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 936), %union.security_list_options { ptr @bpf_lsm_perf_event_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 940), %union.security_list_options { ptr @bpf_lsm_perf_event_read }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 944), %union.security_list_options { ptr @bpf_lsm_perf_event_write }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 948), %union.security_list_options { ptr @bpf_lsm_uring_override_creds }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 952), %union.security_list_options { ptr @bpf_lsm_uring_sqpoll }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 208), %union.security_list_options { ptr @bpf_inode_storage_free }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 384), %union.security_list_options { ptr @bpf_task_storage_free }, ptr null }], [1196 x i8] zeroinitializer }, align 32
@bpf_lsm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016LSM support for eBPF active\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpf_lsm_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security/bpf/hooks.c\00", [43 x i8] zeroinitializer }, align 32
@bpf_lsm_init._entry_ptr = internal global ptr @bpf_lsm_init._entry, section ".printk_index", align 4
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"bpf_lsm_blob_sizes\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 25, i32 23 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 31, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"bpf_lsm_hooks\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 9, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [24 x i8] c"../security/bpf/hooks.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 21, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__lsm_bpf, ptr @bpf_lsm_init._entry, ptr @bpf_lsm_init._entry_ptr, ptr @bpf_lsm_blob_sizes, ptr @.str, ptr @bpf_lsm_hooks, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lsm_blob_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lsm_hooks to i32), i32 4820, i32 6016, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lsm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_lsm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @bpf_lsm_hooks, i32 noundef 241, ptr noundef nonnull @.str) #3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_binder_set_context_mgr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_binder_transaction(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_binder_transfer_binder(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_binder_transfer_file(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ptrace_access_check(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ptrace_traceme(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_capget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_capset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_quotactl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_quota_on(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_syslog(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_settime(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_vm_enough_memory(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bprm_creds_for_exec(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bprm_creds_from_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bprm_check_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_bprm_committing_creds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_bprm_committed_creds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_fs_context_dup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_fs_context_parse_param(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sb_delete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sb_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sb_free_mnt_opts(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_eat_lsm_opts(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_mnt_opts_compat(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_remount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_kern_mount(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_show_options(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_statfs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_umount(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_pivotroot(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_set_mnt_opts(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sb_clone_mnt_opts(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_move_mount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_dentry_init_security(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_dentry_create_files_as(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_unlink(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_mknod(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_truncate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_symlink(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_chmod(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_chown(ptr noundef, [1 x i32], [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_chroot(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_path_notify(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inode_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_init_security_anon(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_create(ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_unlink(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_symlink(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_mknod(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_readlink(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_follow_link(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_permission(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_setattr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_getattr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inode_post_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_getxattr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_listxattr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_need_killpriv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_killpriv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_getsecurity(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_setsecurity(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_listsecurity(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inode_getsecid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_copy_up(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_copy_up_xattr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernfs_init_security(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_permission(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_file_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_mmap_addr(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_mmap_file(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_mprotect(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_lock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_fcntl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_file_set_fowner(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_send_sigiotask(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_receive(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_file_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_task_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_cred_alloc_blank(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_cred_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_cred_prepare(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_cred_transfer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_cred_getsecid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_act_as(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_create_files_as(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_module_request(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_load_data(i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_post_load_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_read_file(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_kernel_post_read_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_fix_setuid(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_fix_setgid(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_setpgid(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_getpgid(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_getsid(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_current_getsecid_subj(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_task_getsecid_obj(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_setnice(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_setioprio(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_getioprio(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_prlimit(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_setrlimit(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_setscheduler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_getscheduler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_movememory(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_kill(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_task_prctl(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_task_to_inode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ipc_permission(ptr noundef, i16 noundef signext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_ipc_getsecid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_msg_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_msg_msg_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_queue_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_msg_queue_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_queue_associate(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_queue_msgctl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_queue_msgsnd(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_msg_queue_msgrcv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_shm_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_shm_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_shm_associate(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_shm_shmctl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_shm_shmat(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sem_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sem_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sem_associate(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sem_semctl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sem_semop(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_netlink_send(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_d_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_getprocattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_setprocattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ismaclabel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_secctx_to_secid(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_release_secctx(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inode_invalidate_secctx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_notifysecctx(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_setsecctx(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inode_getsecctx(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_post_notification(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_watch_key(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_unix_stream_connect(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_unix_may_send(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_post_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_connect(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_accept(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_getsockname(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_getpeername(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_getsockopt(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_setsockopt(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_sock_rcv_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_getpeersec_stream(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_socket_getpeersec_dgram(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sk_alloc_security(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sk_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sk_clone_security(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sk_getsecid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sock_graft(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_inet_conn_request(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inet_csk_clone(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_inet_conn_established(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_secmark_relabel_packet(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_secmark_refcount_inc() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_secmark_refcount_dec() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_req_classify_flow(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_tun_dev_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_tun_dev_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_tun_dev_create() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_tun_dev_attach_queue(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_tun_dev_attach(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_tun_dev_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sctp_assoc_request(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_sctp_bind_connect(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_sctp_sk_clone(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ib_pkey_access(ptr noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ib_endport_manage_subnet(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_ib_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_ib_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_policy_alloc_security(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_policy_clone_security(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_xfrm_policy_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_policy_delete_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_state_alloc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_state_alloc_acquire(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_xfrm_state_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_state_delete_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_policy_lookup(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_state_pol_flow_match(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_key_alloc(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_key_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_key_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_key_getsecurity(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_audit_rule_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_audit_rule_known(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_audit_rule_match(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_audit_rule_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bpf(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bpf_map(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bpf_prog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bpf_map_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_bpf_map_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_bpf_prog_alloc_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_bpf_prog_free_security(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_locked_down(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_perf_event_open(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_perf_event_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lsm_perf_event_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_perf_event_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_perf_event_write(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_uring_override_creds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lsm_uring_sqpoll() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_inode_storage_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_task_storage_free(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @bpf_lsm_blob_sizes, !1, !"bpf_lsm_blob_sizes", i1 false, i1 false}
!1 = !{!"../security/bpf/hooks.c", i32 25, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/bpf/hooks.c", i32 31, i32 10}
!4 = !{ptr @__lsm_bpf, !5, !"__lsm_bpf", i1 false, i1 false}
!5 = !{!"../security/bpf/hooks.c", i32 30, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/bpf/hooks.c", i32 21, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bpf_lsm_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @bpf_lsm_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @bpf_lsm_hooks, !13, !"bpf_lsm_hooks", i1 false, i1 false}
!13 = !{!"../security/bpf/hooks.c", i32 9, i32 34}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
