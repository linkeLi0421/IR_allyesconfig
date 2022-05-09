; ModuleID = '/llk/IR_all_yes/fs/ksmbd/smbacl.c_pt.bc'
source_filename = "../fs/ksmbd/smbacl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.posix_acl_entry = type { i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.posix_acl_state = type { %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, ptr, ptr }
%struct.posix_ace_state = type { i32, i32 }
%struct.posix_ace_state_array = type { i32, [0 x %struct.posix_user_ace_state] }
%struct.posix_user_ace_state = type { %union.anon, %struct.posix_ace_state }
%union.anon = type { %struct.kuid_t }
%struct.smb_fattr = type { %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.smb_ntsd = type { i16, i16, i32, i32, i32, i32 }
%struct.smb_acl = type { i16, i16, i32 }
%struct.smb_ace = type { i8, i8, i16, i32, %struct.smb_sid }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%union.anon.64 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.65 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.56 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.57 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.ksmbd_tree_connect = type { i32, i32, ptr, ptr, %struct.list_head, i32, i8 }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }

@server_conf = external dso_local global %struct.ksmbd_server_config, align 4
@creator_owner = internal constant { %struct.smb_sid, [60 x i8] } { %struct.smb_sid { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\03", [15 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@parse_sec_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016ksmbd: revision %d type 0x%x ooffset 0x%x goffset 0x%x sacloffset 0x%x dacloffset 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parse_sec_desc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ksmbd/smbacl.c\00", [46 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr = internal global ptr @parse_sec_desc._entry, section ".printk_index", align 4
@parse_sec_desc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ksmbd: DACL_PRESENT in DACL type is not set\0A\00", [49 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr.5 = internal global ptr @parse_sec_desc._entry.3, section ".printk_index", align 4
@parse_sec_desc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: %s: Error %d parsing Owner SID\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr.8 = internal global ptr @parse_sec_desc._entry.6, section ".printk_index", align 4
@parse_sec_desc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: %s: Error %d mapping Owner SID to uid\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr.11 = internal global ptr @parse_sec_desc._entry.9, section ".printk_index", align 4
@parse_sec_desc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: %s: Error %d mapping Owner SID to gid\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr.14 = internal global ptr @parse_sec_desc._entry.12, section ".printk_index", align 4
@parse_sec_desc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: %s: Error %d mapping Group SID to gid\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_sec_desc._entry_ptr.17 = internal global ptr @parse_sec_desc._entry.15, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@smb_check_perm_dacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ksmbd: check permission using windows acl\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smb_check_perm_dacl\00", [44 x i8] zeroinitializer }, align 32
@smb_check_perm_dacl._entry_ptr = internal global ptr @smb_check_perm_dacl._entry, section ".printk_index", align 4
@sid_everyone = internal constant { %struct.smb_sid, [60 x i8] } { %struct.smb_sid { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\01", [15 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@smb_check_perm_dacl._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ksmbd: Can't find corresponding sid\0A\00", [57 x i8] zeroinitializer }, align 32
@smb_check_perm_dacl._entry_ptr.22 = internal global ptr @smb_check_perm_dacl._entry.20, section ".printk_index", align 4
@smb_check_perm_dacl._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016ksmbd: Access denied with winACL, granted : %x, access_req : %x\0A\00", [61 x i8] zeroinitializer }, align 32
@smb_check_perm_dacl._entry_ptr.25 = internal global ptr @smb_check_perm_dacl._entry.23, section ".printk_index", align 4
@set_info_sec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ksmbd: Set posix acl(ACL_TYPE_ACCESS) failed, rc : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_info_sec\00", [19 x i8] zeroinitializer }, align 32
@set_info_sec._entry_ptr = internal global ptr @set_info_sec._entry, section ".printk_index", align 4
@set_info_sec._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016ksmbd: Set posix acl(ACL_TYPE_DEFAULT) failed, rc : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@set_info_sec._entry_ptr.30 = internal global ptr @set_info_sec._entry.28, section ".printk_index", align 4
@sid_unix_users = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\16", <{ i32, [14 x i32] }> <{ i32 16777216, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_groups = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\16", <{ i32, [14 x i32] }> <{ i32 33554432, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@creator_group = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\03", <{ i32, [14 x i32] }> <{ i32 16777216, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_users = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 16777216, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_groups = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 33554432, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_mode = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 50331648, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@parse_sid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ksmbd: ACL too small to parse SID %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_sid\00", [22 x i8] zeroinitializer }, align 32
@parse_sid._entry_ptr = internal global ptr @parse_sid._entry, section ".printk_index", align 4
@sid_to_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ksmbd: %s: %u subauthorities is too many!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sid_to_id\00", [22 x i8] zeroinitializer }, align 32
@sid_to_id._entry_ptr = internal global ptr @sid_to_id._entry, section ".printk_index", align 4
@parse_dacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: ACL too small to parse DACL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_dacl\00", [21 x i8] zeroinitializer }, align 32
@parse_dacl._entry_ptr = internal global ptr @parse_dacl._entry, section ".printk_index", align 4
@parse_dacl._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ksmbd: DACL revision %d size %d num aces %d\0A\00", [49 x i8] zeroinitializer }, align 32
@parse_dacl._entry_ptr.45 = internal global ptr @parse_dacl._entry.43, section ".printk_index", align 4
@parse_dacl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.42, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_dacl._entry_ptr.47 = internal global ptr @parse_dacl._entry.46, section ".printk_index", align 4
@access_flags_to_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016ksmbd: all perms\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"access_flags_to_mode\00", [43 x i8] zeroinitializer }, align 32
@access_flags_to_mode._entry_ptr = internal global ptr @access_flags_to_mode._entry, section ".printk_index", align 4
@access_flags_to_mode._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ksmbd: access flags 0x%x mode now %04o\0A\00", [54 x i8] zeroinitializer }, align 32
@access_flags_to_mode._entry_ptr.52 = internal global ptr @access_flags_to_mode._entry.50, section ".printk_index", align 4
@sid_authusers = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\05", <{ i32, [14 x i32] }> <{ i32 184549376, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mode_to_access_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ksmbd: mode: %o, access flags now 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mode_to_access_flags\00", [43 x i8] zeroinitializer }, align 32
@mode_to_access_flags._entry_ptr = internal global ptr @mode_to_access_flags._entry, section ".printk_index", align 4
@domain = internal constant { { i8, i8, [6 x i8], <{ i32, i32, i32, i32, [11 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, i32, i32, [11 x i32] }> } { i8 1, i8 4, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, i32, i32, [11 x i32] }> <{ i32 352321536, i32 16777216, i32 33554432, i32 50331648, [11 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 8, i64 32]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"creator_owner\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 25, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 820, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 828, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 837, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 843, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 852, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 858, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1167, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"sid_everyone\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 32, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1276, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1295, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1343, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1350, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"sid_unix_users\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 39, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"sid_unix_groups\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 43, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"creator_group\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 28, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"sid_unix_NFS_users\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 53, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"sid_unix_NFS_groups\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 58, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"sid_unix_NFS_mode\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 63, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 790, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 268, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 384, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 388, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 492, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 141, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 158, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [14 x i8] c"sid_authusers\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 35, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 189, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@___asan_gen_.231 = private constant [21 x i8] c"../fs/ksmbd/smbacl.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 20, i32 29 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @access_flags_to_mode._entry, ptr @access_flags_to_mode._entry.50, ptr @access_flags_to_mode._entry_ptr, ptr @access_flags_to_mode._entry_ptr.52, ptr @mode_to_access_flags._entry, ptr @mode_to_access_flags._entry_ptr, ptr @parse_dacl._entry, ptr @parse_dacl._entry.43, ptr @parse_dacl._entry.46, ptr @parse_dacl._entry_ptr, ptr @parse_dacl._entry_ptr.45, ptr @parse_dacl._entry_ptr.47, ptr @parse_sec_desc._entry, ptr @parse_sec_desc._entry.12, ptr @parse_sec_desc._entry.15, ptr @parse_sec_desc._entry.3, ptr @parse_sec_desc._entry.6, ptr @parse_sec_desc._entry.9, ptr @parse_sec_desc._entry_ptr, ptr @parse_sec_desc._entry_ptr.11, ptr @parse_sec_desc._entry_ptr.14, ptr @parse_sec_desc._entry_ptr.17, ptr @parse_sec_desc._entry_ptr.5, ptr @parse_sec_desc._entry_ptr.8, ptr @parse_sid._entry, ptr @parse_sid._entry_ptr, ptr @set_info_sec._entry, ptr @set_info_sec._entry.28, ptr @set_info_sec._entry_ptr, ptr @set_info_sec._entry_ptr.30, ptr @sid_to_id._entry, ptr @sid_to_id._entry_ptr, ptr @smb_check_perm_dacl._entry, ptr @smb_check_perm_dacl._entry.20, ptr @smb_check_perm_dacl._entry.23, ptr @smb_check_perm_dacl._entry_ptr, ptr @smb_check_perm_dacl._entry_ptr.22, ptr @smb_check_perm_dacl._entry_ptr.25, ptr @creator_owner, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @sid_everyone, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @sid_unix_users, ptr @sid_unix_groups, ptr @creator_group, ptr @sid_unix_NFS_users, ptr @sid_unix_NFS_groups, ptr @sid_unix_NFS_mode, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @sid_authusers, ptr @.str.54, ptr @.str.55, ptr @domain], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creator_owner to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_check_perm_dacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_everyone to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_check_perm_dacl._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_check_perm_dacl._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_info_sec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_info_sec._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_users to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_groups to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creator_group to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_users to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_groups to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_mode to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_to_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_authusers to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_to_access_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @compare_sids(ptr noundef readonly %ctsid, ptr noundef readonly %cwsid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctsid, null
  %tobool1.not = icmp eq ptr %cwsid, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctsid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctsid, align 1
  %2 = ptrtoint ptr %cwsid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cwsid, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %for.body.preheader, label %if.then5

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx18 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp20.not = icmp eq i8 %5, %7
  br i1 %cmp20.not, label %for.cond, label %for.body.preheader.if.then22_crit_edge

for.body.preheader.if.then22_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp10 = icmp ugt i8 %1, %3
  %. = select i1 %cmp10, i32 1, i32 -1
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  %arrayidx18.1 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp20.not.1 = icmp eq i8 %9, %11
  br i1 %cmp20.not.1, label %for.cond.1, label %for.cond.if.then22_crit_edge

for.cond.if.then22_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %arrayidx18.2 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp20.not.2 = icmp eq i8 %13, %15
  br i1 %cmp20.not.2, label %for.cond.2, label %for.cond.1.if.then22_crit_edge

for.cond.1.if.then22_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx18.3 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp20.not.3 = icmp eq i8 %17, %19
  br i1 %cmp20.not.3, label %for.cond.3, label %for.cond.2.if.then22_crit_edge

for.cond.2.if.then22_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %arrayidx18.4 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp20.not.4 = icmp eq i8 %21, %23
  br i1 %cmp20.not.4, label %for.cond.4, label %for.cond.3.if.then22_crit_edge

for.cond.3.if.then22_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %arrayidx18.5 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp20.not.5 = icmp eq i8 %25, %27
  br i1 %cmp20.not.5, label %for.cond.5, label %for.cond.4.if.then22_crit_edge

for.cond.4.if.then22_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

for.cond.5:                                       ; preds = %for.cond.4
  %num_subauth34 = getelementptr inbounds %struct.smb_sid, ptr %ctsid, i32 0, i32 1
  %28 = ptrtoint ptr %num_subauth34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_subauth34, align 1
  %num_subauth36 = getelementptr inbounds %struct.smb_sid, ptr %cwsid, i32 0, i32 1
  %30 = ptrtoint ptr %num_subauth36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_subauth36, align 1
  %32 = tail call i8 @llvm.umin.i8(i8 %29, i8 %31)
  %cond = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool40.not.not = icmp eq i8 %32, 0
  br i1 %tobool40.not.not, label %for.cond.5.cleanup_crit_edge, label %for.cond.5.for.body45_crit_edge

for.cond.5.for.body45_crit_edge:                  ; preds = %for.cond.5
  br label %for.body45

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %for.cond.4.if.then22_crit_edge, %for.cond.3.if.then22_crit_edge, %for.cond.2.if.then22_crit_edge, %for.cond.1.if.then22_crit_edge, %for.cond.if.then22_crit_edge, %for.body.preheader.if.then22_crit_edge
  %.lcssa112 = phi i8 [ %5, %for.body.preheader.if.then22_crit_edge ], [ %9, %for.cond.if.then22_crit_edge ], [ %13, %for.cond.1.if.then22_crit_edge ], [ %17, %for.cond.2.if.then22_crit_edge ], [ %21, %for.cond.3.if.then22_crit_edge ], [ %25, %for.cond.4.if.then22_crit_edge ]
  %.lcssa110 = phi i8 [ %7, %for.body.preheader.if.then22_crit_edge ], [ %11, %for.cond.if.then22_crit_edge ], [ %15, %for.cond.1.if.then22_crit_edge ], [ %19, %for.cond.2.if.then22_crit_edge ], [ %23, %for.cond.3.if.then22_crit_edge ], [ %27, %for.cond.4.if.then22_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa112, i8 %.lcssa110)
  %cmp29 = icmp ugt i8 %.lcssa112, %.lcssa110
  %.97 = select i1 %cmp29, i32 1, i32 -1
  br label %cleanup

for.cond42:                                       ; preds = %for.body45
  %inc62 = add nuw nsw i32 %i.1105, 1
  %exitcond.not = icmp eq i32 %inc62, %cond
  br i1 %exitcond.not, label %for.cond42.cleanup_crit_edge, label %for.cond42.for.body45_crit_edge

for.cond42.for.body45_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

for.cond42.cleanup_crit_edge:                     ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body45:                                       ; preds = %for.cond42.for.body45_crit_edge, %for.cond.5.for.body45_crit_edge
  %i.1105 = phi i32 [ %inc62, %for.cond42.for.body45_crit_edge ], [ 0, %for.cond.5.for.body45_crit_edge ]
  %arrayidx46 = getelementptr %struct.smb_sid, ptr %ctsid, i32 0, i32 3, i32 %i.1105
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx46, align 1
  %arrayidx48 = getelementptr %struct.smb_sid, ptr %cwsid, i32 0, i32 3, i32 %i.1105
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp49.not = icmp eq i32 %34, %36
  br i1 %cmp49.not, label %for.cond42, label %if.then51

if.then51:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  %37 = tail call i32 @llvm.bswap.i32(i32 %34)
  %38 = tail call i32 @llvm.bswap.i32(i32 %36)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp56 = icmp ugt i32 %37, %38
  %.99 = select i1 %cmp56, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %for.cond42.cleanup_crit_edge, %if.then22, %for.cond.5.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.then5 ], [ %.97, %if.then22 ], [ %.99, %if.then51 ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @id_to_sid(i32 noundef %cid, i32 noundef %sidtype, ptr noundef %ssid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sidtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sidtype, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 9, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11) to i32))
  %1 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11), align 4
  %2 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %ssid, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 1) to i32))
  %3 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 1), align 1
  %4 = tail call i8 @llvm.umin.i8(i8 %3, i8 15) #13
  %num_subauth7.i = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %5 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %num_subauth7.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 0) to i32))
  %6 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 0), align 2
  %arrayidx11.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx11.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 1) to i32))
  %8 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 1), align 1
  %arrayidx11.1.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx11.1.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 2) to i32))
  %10 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 2), align 4
  %arrayidx11.2.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx11.2.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 3) to i32))
  %12 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 3), align 1
  %arrayidx11.3.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx11.3.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 4) to i32))
  %14 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 4), align 2
  %arrayidx11.4.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx11.4.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 5) to i32))
  %16 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 5), align 1
  %arrayidx11.5.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1542.not.i = icmp eq i8 %4, 0
  br i1 %cmp1542.not.i, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body17.i_crit_edge

sw.bb.for.body17.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body17.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %sw.bb.for.body17.i_crit_edge
  %i.143.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %sw.bb.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 %i.143.i
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i
  %20 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %arrayidx20.i, align 1
  %inc22.i = add nuw nsw i32 %i.143.i, 1
  %21 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_subauth7.i, align 1
  %conv14.i = zext i8 %22 to i32
  %cmp15.i = icmp ult i32 %inc22.i, %conv14.i
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.sw.epilog_crit_edge

for.body17.i.sw.epilog_crit_edge:                 ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i

sw.bb1:                                           ; preds = %entry
  %23 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i19 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %24 = ptrtoint ptr %num_subauth7.i19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %num_subauth7.i19, align 1
  %arrayidx11.i20 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i25 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %25 = call ptr @memset(ptr %arrayidx11.i20, i32 0, i32 5)
  %26 = ptrtoint ptr %arrayidx11.5.i25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 22, ptr %arrayidx11.5.i25, align 1
  br label %for.body17.i32

for.body17.i32:                                   ; preds = %for.body17.i32.for.body17.i32_crit_edge, %sw.bb1
  %i.143.i26 = phi i32 [ %inc22.i29, %for.body17.i32.for.body17.i32_crit_edge ], [ 0, %sw.bb1 ]
  %arrayidx18.i27 = getelementptr %struct.smb_sid, ptr @sid_unix_users, i32 0, i32 3, i32 %i.143.i26
  %27 = ptrtoint ptr %arrayidx18.i27 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %arrayidx18.i27, align 1
  %arrayidx20.i28 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i26
  %29 = ptrtoint ptr %arrayidx20.i28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx20.i28, align 1
  %inc22.i29 = add nuw nsw i32 %i.143.i26, 1
  %30 = ptrtoint ptr %num_subauth7.i19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_subauth7.i19, align 1
  %conv14.i30 = zext i8 %31 to i32
  %cmp15.i31 = icmp ult i32 %inc22.i29, %conv14.i30
  br i1 %cmp15.i31, label %for.body17.i32.for.body17.i32_crit_edge, label %for.body17.i32.sw.epilog_crit_edge

for.body17.i32.sw.epilog_crit_edge:               ; preds = %for.body17.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i32.for.body17.i32_crit_edge:          ; preds = %for.body17.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i32

sw.bb2:                                           ; preds = %entry
  %32 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i34 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %33 = ptrtoint ptr %num_subauth7.i34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_subauth7.i34, align 1
  %arrayidx11.i35 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i40 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %34 = call ptr @memset(ptr %arrayidx11.i35, i32 0, i32 5)
  %35 = ptrtoint ptr %arrayidx11.5.i40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 22, ptr %arrayidx11.5.i40, align 1
  br label %for.body17.i47

for.body17.i47:                                   ; preds = %for.body17.i47.for.body17.i47_crit_edge, %sw.bb2
  %i.143.i41 = phi i32 [ %inc22.i44, %for.body17.i47.for.body17.i47_crit_edge ], [ 0, %sw.bb2 ]
  %arrayidx18.i42 = getelementptr %struct.smb_sid, ptr @sid_unix_groups, i32 0, i32 3, i32 %i.143.i41
  %36 = ptrtoint ptr %arrayidx18.i42 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx18.i42, align 1
  %arrayidx20.i43 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i41
  %38 = ptrtoint ptr %arrayidx20.i43 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx20.i43, align 1
  %inc22.i44 = add nuw nsw i32 %i.143.i41, 1
  %39 = ptrtoint ptr %num_subauth7.i34 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_subauth7.i34, align 1
  %conv14.i45 = zext i8 %40 to i32
  %cmp15.i46 = icmp ult i32 %inc22.i44, %conv14.i45
  br i1 %cmp15.i46, label %for.body17.i47.for.body17.i47_crit_edge, label %for.body17.i47.sw.epilog_crit_edge

for.body17.i47.sw.epilog_crit_edge:               ; preds = %for.body17.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i47.for.body17.i47_crit_edge:          ; preds = %for.body17.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i47

sw.bb3:                                           ; preds = %entry
  %41 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i49 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %42 = ptrtoint ptr %num_subauth7.i49 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %num_subauth7.i49, align 1
  %arrayidx11.i50 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i55 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %43 = call ptr @memset(ptr %arrayidx11.i50, i32 0, i32 5)
  %44 = ptrtoint ptr %arrayidx11.5.i55 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %arrayidx11.5.i55, align 1
  br label %for.body17.i62

for.body17.i62:                                   ; preds = %for.body17.i62.for.body17.i62_crit_edge, %sw.bb3
  %i.143.i56 = phi i32 [ %inc22.i59, %for.body17.i62.for.body17.i62_crit_edge ], [ 0, %sw.bb3 ]
  %arrayidx18.i57 = getelementptr %struct.smb_sid, ptr @creator_owner, i32 0, i32 3, i32 %i.143.i56
  %45 = ptrtoint ptr %arrayidx18.i57 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx18.i57, align 1
  %arrayidx20.i58 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i56
  %47 = ptrtoint ptr %arrayidx20.i58 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %arrayidx20.i58, align 1
  %inc22.i59 = add nuw nsw i32 %i.143.i56, 1
  %48 = ptrtoint ptr %num_subauth7.i49 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_subauth7.i49, align 1
  %conv14.i60 = zext i8 %49 to i32
  %cmp15.i61 = icmp ult i32 %inc22.i59, %conv14.i60
  br i1 %cmp15.i61, label %for.body17.i62.for.body17.i62_crit_edge, label %for.body17.i62.return_crit_edge

for.body17.i62.return_crit_edge:                  ; preds = %for.body17.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body17.i62.for.body17.i62_crit_edge:          ; preds = %for.body17.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i62

sw.bb4:                                           ; preds = %entry
  %50 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i64 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %51 = ptrtoint ptr %num_subauth7.i64 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %num_subauth7.i64, align 1
  %arrayidx11.i65 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i70 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %52 = call ptr @memset(ptr %arrayidx11.i65, i32 0, i32 5)
  %53 = ptrtoint ptr %arrayidx11.5.i70 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %arrayidx11.5.i70, align 1
  br label %for.body17.i77

for.body17.i77:                                   ; preds = %for.body17.i77.for.body17.i77_crit_edge, %sw.bb4
  %i.143.i71 = phi i32 [ %inc22.i74, %for.body17.i77.for.body17.i77_crit_edge ], [ 0, %sw.bb4 ]
  %arrayidx18.i72 = getelementptr %struct.smb_sid, ptr @creator_group, i32 0, i32 3, i32 %i.143.i71
  %54 = ptrtoint ptr %arrayidx18.i72 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx18.i72, align 1
  %arrayidx20.i73 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i71
  %56 = ptrtoint ptr %arrayidx20.i73 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %arrayidx20.i73, align 1
  %inc22.i74 = add nuw nsw i32 %i.143.i71, 1
  %57 = ptrtoint ptr %num_subauth7.i64 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_subauth7.i64, align 1
  %conv14.i75 = zext i8 %58 to i32
  %cmp15.i76 = icmp ult i32 %inc22.i74, %conv14.i75
  br i1 %cmp15.i76, label %for.body17.i77.for.body17.i77_crit_edge, label %for.body17.i77.return_crit_edge

for.body17.i77.return_crit_edge:                  ; preds = %for.body17.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body17.i77.for.body17.i77_crit_edge:          ; preds = %for.body17.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i77

sw.bb5:                                           ; preds = %entry
  %59 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i79 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %60 = ptrtoint ptr %num_subauth7.i79 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %num_subauth7.i79, align 1
  %arrayidx11.i80 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i85 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %61 = call ptr @memset(ptr %arrayidx11.i80, i32 0, i32 5)
  %62 = ptrtoint ptr %arrayidx11.5.i85 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 5, ptr %arrayidx11.5.i85, align 1
  br label %for.body17.i92

for.body17.i92:                                   ; preds = %for.body17.i92.for.body17.i92_crit_edge, %sw.bb5
  %i.143.i86 = phi i32 [ %inc22.i89, %for.body17.i92.for.body17.i92_crit_edge ], [ 0, %sw.bb5 ]
  %arrayidx18.i87 = getelementptr %struct.smb_sid, ptr @sid_unix_NFS_users, i32 0, i32 3, i32 %i.143.i86
  %63 = ptrtoint ptr %arrayidx18.i87 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx18.i87, align 1
  %arrayidx20.i88 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i86
  %65 = ptrtoint ptr %arrayidx20.i88 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx20.i88, align 1
  %inc22.i89 = add nuw nsw i32 %i.143.i86, 1
  %66 = ptrtoint ptr %num_subauth7.i79 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_subauth7.i79, align 1
  %conv14.i90 = zext i8 %67 to i32
  %cmp15.i91 = icmp ult i32 %inc22.i89, %conv14.i90
  br i1 %cmp15.i91, label %for.body17.i92.for.body17.i92_crit_edge, label %for.body17.i92.sw.epilog_crit_edge

for.body17.i92.sw.epilog_crit_edge:               ; preds = %for.body17.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i92.for.body17.i92_crit_edge:          ; preds = %for.body17.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i92

sw.bb6:                                           ; preds = %entry
  %68 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i94 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %69 = ptrtoint ptr %num_subauth7.i94 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %num_subauth7.i94, align 1
  %arrayidx11.i95 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i100 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %70 = call ptr @memset(ptr %arrayidx11.i95, i32 0, i32 5)
  %71 = ptrtoint ptr %arrayidx11.5.i100 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 5, ptr %arrayidx11.5.i100, align 1
  br label %for.body17.i107

for.body17.i107:                                  ; preds = %for.body17.i107.for.body17.i107_crit_edge, %sw.bb6
  %i.143.i101 = phi i32 [ %inc22.i104, %for.body17.i107.for.body17.i107_crit_edge ], [ 0, %sw.bb6 ]
  %arrayidx18.i102 = getelementptr %struct.smb_sid, ptr @sid_unix_NFS_groups, i32 0, i32 3, i32 %i.143.i101
  %72 = ptrtoint ptr %arrayidx18.i102 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %arrayidx18.i102, align 1
  %arrayidx20.i103 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i101
  %74 = ptrtoint ptr %arrayidx20.i103 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %arrayidx20.i103, align 1
  %inc22.i104 = add nuw nsw i32 %i.143.i101, 1
  %75 = ptrtoint ptr %num_subauth7.i94 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_subauth7.i94, align 1
  %conv14.i105 = zext i8 %76 to i32
  %cmp15.i106 = icmp ult i32 %inc22.i104, %conv14.i105
  br i1 %cmp15.i106, label %for.body17.i107.for.body17.i107_crit_edge, label %for.body17.i107.sw.epilog_crit_edge

for.body17.i107.sw.epilog_crit_edge:              ; preds = %for.body17.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i107.for.body17.i107_crit_edge:        ; preds = %for.body17.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i107

sw.bb7:                                           ; preds = %entry
  %77 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %ssid, align 1
  %num_subauth7.i109 = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %78 = ptrtoint ptr %num_subauth7.i109 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %num_subauth7.i109, align 1
  %arrayidx11.i110 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 0
  %arrayidx11.5.i115 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 2, i32 5
  %79 = call ptr @memset(ptr %arrayidx11.i110, i32 0, i32 5)
  %80 = ptrtoint ptr %arrayidx11.5.i115 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 5, ptr %arrayidx11.5.i115, align 1
  br label %for.body17.i122

for.body17.i122:                                  ; preds = %for.body17.i122.for.body17.i122_crit_edge, %sw.bb7
  %i.143.i116 = phi i32 [ %inc22.i119, %for.body17.i122.for.body17.i122_crit_edge ], [ 0, %sw.bb7 ]
  %arrayidx18.i117 = getelementptr %struct.smb_sid, ptr @sid_unix_NFS_mode, i32 0, i32 3, i32 %i.143.i116
  %81 = ptrtoint ptr %arrayidx18.i117 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx18.i117, align 1
  %arrayidx20.i118 = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %i.143.i116
  %83 = ptrtoint ptr %arrayidx20.i118 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %arrayidx20.i118, align 1
  %inc22.i119 = add nuw nsw i32 %i.143.i116, 1
  %84 = ptrtoint ptr %num_subauth7.i109 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_subauth7.i109, align 1
  %conv14.i120 = zext i8 %85 to i32
  %cmp15.i121 = icmp ult i32 %inc22.i119, %conv14.i120
  br i1 %cmp15.i121, label %for.body17.i122.for.body17.i122_crit_edge, label %for.body17.i122.sw.epilog_crit_edge

for.body17.i122.sw.epilog_crit_edge:              ; preds = %for.body17.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body17.i122.for.body17.i122_crit_edge:        ; preds = %for.body17.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i122

sw.epilog:                                        ; preds = %for.body17.i122.sw.epilog_crit_edge, %for.body17.i107.sw.epilog_crit_edge, %for.body17.i92.sw.epilog_crit_edge, %for.body17.i47.sw.epilog_crit_edge, %for.body17.i32.sw.epilog_crit_edge, %for.body17.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %86 = tail call i32 @llvm.bswap.i32(i32 %cid)
  %num_subauth = getelementptr inbounds %struct.smb_sid, ptr %ssid, i32 0, i32 1
  %87 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_subauth, align 1
  %idxprom = zext i8 %88 to i32
  %arrayidx = getelementptr %struct.smb_sid, ptr %ssid, i32 0, i32 3, i32 %idxprom
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %86, ptr %arrayidx, align 1
  %inc = add i8 %88, 1
  store i8 %inc, ptr %num_subauth, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %for.body17.i77.return_crit_edge, %for.body17.i62.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_state_to_acl(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %pace) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pace to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %pace, align 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %conv = trunc i32 %2 to i16
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pace, i32 0, i32 1
  %3 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %e_perm, align 2
  %users = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %users, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp86 = icmp sgt i32 %7, 0
  br i1 %cmp86, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pace.addr.087 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %pace, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pace.addr.087, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %incdec.ptr, align 4
  %9 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.087, i32 1, i32 2
  %10 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %users, align 4
  %arrayidx = getelementptr %struct.posix_ace_state_array, ptr %11, i32 0, i32 1, i32 %i.088
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %9, align 4
  %15 = load ptr, ptr %users, align 4
  %perms = getelementptr %struct.posix_ace_state_array, ptr %15, i32 0, i32 1, i32 %i.088, i32 1
  %16 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %perms, align 4
  %conv8 = trunc i32 %17 to i16
  %e_perm9 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.087, i32 1, i32 1
  %18 = ptrtoint ptr %e_perm9 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv8, ptr %e_perm9, align 2
  %inc = add nuw nsw i32 %i.088, 1
  %19 = load ptr, ptr %users, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pace.addr.0.lcssa = phi ptr [ %pace, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %incdec.ptr10 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.0.lcssa, i32 1
  %22 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %incdec.ptr10, align 4
  %group = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %group, align 4
  %conv13 = trunc i32 %24 to i16
  %e_perm14 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.0.lcssa, i32 1, i32 1
  %25 = ptrtoint ptr %e_perm14 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv13, ptr %e_perm14, align 2
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %26 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1790 = icmp sgt i32 %29, 0
  br i1 %cmp1790, label %for.end.for.body19_crit_edge, label %for.end.for.end34_crit_edge

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %i.192 = phi i32 [ %inc33, %for.body19.for.body19_crit_edge ], [ 0, %for.end.for.body19_crit_edge ]
  %pace.addr.191 = phi ptr [ %incdec.ptr20, %for.body19.for.body19_crit_edge ], [ %incdec.ptr10, %for.end.for.body19_crit_edge ]
  %incdec.ptr20 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.191, i32 1
  %30 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %incdec.ptr20, align 4
  %31 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.191, i32 1, i32 2
  %32 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %groups, align 4
  %arrayidx24 = getelementptr %struct.posix_ace_state_array, ptr %33, i32 0, i32 1, i32 %i.192
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %31, align 4
  %37 = load ptr, ptr %groups, align 4
  %perms28 = getelementptr %struct.posix_ace_state_array, ptr %37, i32 0, i32 1, i32 %i.192, i32 1
  %38 = ptrtoint ptr %perms28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %perms28, align 4
  %conv30 = trunc i32 %39 to i16
  %e_perm31 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.191, i32 1, i32 1
  %40 = ptrtoint ptr %e_perm31 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv30, ptr %e_perm31, align 2
  %inc33 = add nuw nsw i32 %i.192, 1
  %41 = load ptr, ptr %groups, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %cmp17 = icmp slt i32 %inc33, %43
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.for.end34_crit_edge

for.body19.for.end34_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

for.end34:                                        ; preds = %for.body19.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %pace.addr.1.lcssa = phi ptr [ %incdec.ptr10, %for.end.for.end34_crit_edge ], [ %incdec.ptr20, %for.body19.for.end34_crit_edge ]
  %.lcssa = phi i32 [ %29, %for.end.for.end34_crit_edge ], [ %43, %for.body19.for.end34_crit_edge ]
  %44 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %users, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool39.not = icmp eq i32 %.lcssa, 0
  %or.cond = select i1 %tobool.not, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %for.end34.if.end_crit_edge, label %if.then

for.end34.if.end_crit_edge:                       ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr40 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.1.lcssa, i32 1
  %48 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 16, ptr %incdec.ptr40, align 4
  %mask = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask, align 4
  %conv43 = trunc i32 %50 to i16
  %e_perm44 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.1.lcssa, i32 1, i32 1
  %51 = ptrtoint ptr %e_perm44 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv43, ptr %e_perm44, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end34.if.end_crit_edge
  %pace.addr.2 = phi ptr [ %incdec.ptr40, %if.then ], [ %pace.addr.1.lcssa, %for.end34.if.end_crit_edge ]
  %incdec.ptr45 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.2, i32 1
  %52 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 32, ptr %incdec.ptr45, align 4
  %other = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  %53 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %other, align 4
  %conv48 = trunc i32 %54 to i16
  %e_perm49 = getelementptr %struct.posix_acl_entry, ptr %pace.addr.2, i32 1, i32 1
  %55 = ptrtoint ptr %e_perm49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv48, ptr %e_perm49, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_acl_state(ptr nocapture noundef %state, i32 noundef %cnt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %state, i32 0, i32 48)
  %mul = mul i32 %cnt, 12
  %add = add i32 %mul, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %users52 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 5
  %1 = ptrtoint ptr %users52 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %users52, align 4
  %tobool.not53 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not53, label %entry.cleanup_crit_edge, label %if.end8.i.i40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i40:                                    ; preds = %entry
  %call9.i.i39 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i39, ptr %groups, align 4
  %tobool4.not = icmp eq ptr %call9.i.i39, null
  br i1 %tobool4.not, label %if.then5, label %if.end8.i.i40.cleanup_crit_edge

if.end8.i.i40.cleanup_crit_edge:                  ; preds = %if.end8.i.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end8.i.i40
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %users52 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %users52, align 4
  tail call void @kfree(ptr noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end8.i.i40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %if.end8.i.i40.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_acl_state(ptr nocapture noundef readonly %state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %users, align 4
  tail call void @kfree(ptr noundef %1) #13
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_sec_desc(ptr noundef %user_ns, ptr noundef %pntsd, i32 noundef %acl_len, ptr nocapture noundef %fattr) local_unnamed_addr #5 align 64 {
entry:
  %acl_state.i = alloca %struct.posix_acl_state, align 4
  %default_acl_state.i = alloca %struct.posix_acl_state, align 4
  %temp_fattr.i = alloca %struct.smb_fattr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pntsd, i32 %acl_len
  %tobool.not = icmp eq ptr %pntsd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %acl_len)
  %cmp = icmp ult i32 %acl_len, 20
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %osidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 2
  %0 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %osidoffset, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr3 = getelementptr i8, ptr %pntsd, i32 %2
  %gsidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 3
  %3 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %gsidoffset, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr4 = getelementptr i8, ptr %pntsd, i32 %5
  %dacloffset5 = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 5
  %6 = ptrtoint ptr %dacloffset5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %dacloffset5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr6 = getelementptr i8, ptr %pntsd, i32 %8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end2.do.end15_crit_edge, label %do.end

if.end2.do.end15_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pntsd to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %pntsd, align 1
  %conv = zext i16 %11 to i32
  %type = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %type, align 1
  %conv10 = zext i16 %13 to i32
  %sacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 4
  %14 = ptrtoint ptr %sacloffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %sacloffset, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv10, i32 noundef %2, i32 noundef %5, i32 noundef %16, i32 noundef %8) #17
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.end2.do.end15_crit_edge
  %type16 = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 1
  %17 = ptrtoint ptr %type16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %type16, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv17 = zext i16 %19 to i32
  %and18 = and i32 %conv17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body21, label %if.end33

do.body21:                                        ; preds = %do.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %20 = load i32, ptr @ksmbd_debug_types, align 4
  %and22 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %do.end27

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end33:                                         ; preds = %do.end15
  %21 = ptrtoint ptr %type16 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 1024, ptr %type16, align 1
  %22 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %osidoffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool36.not = icmp eq i32 %23, 0
  br i1 %tobool36.not, label %if.end33.if.end56_crit_edge, label %if.then37

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then37:                                        ; preds = %if.end33
  %add.ptr.i = getelementptr i8, ptr %add.ptr3, i32 8
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp.i, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %add.ptr3) #17
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef -22) #17
  br label %cleanup

if.end46:                                         ; preds = %if.then37
  %num_subauth.i = getelementptr inbounds %struct.smb_sid, ptr %add.ptr3, i32 0, i32 1
  %24 = ptrtoint ptr %num_subauth.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_subauth.i, align 1
  %conv.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %25)
  %cmp.i147 = icmp ugt i8 %25, 15
  br i1 %cmp.i147, label %do.end.i149, label %if.end.i, !prof !113

do.end.i149:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %call.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv.i) #17
  br label %do.end52

if.end.i:                                         ; preds = %if.end46
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.smb_sid, ptr %add.ptr3, i32 0, i32 3, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  %cmp.i.i.i.i = icmp eq ptr %user_ns, @init_user_ns
  br i1 %cmp.i.i.i.i, label %if.end.i.mapped_kuid_user.exit.i_crit_edge, label %if.end.i.i

if.end.i.mapped_kuid_user.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapped_kuid_user.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %.fca.0.insert35.i = insertvalue [1 x i32] poison, i32 %28, 0
  %call2.i.i = tail call i32 @from_kuid(ptr noundef %user_ns, [1 x i32] %.fca.0.insert35.i) #13
  br label %mapped_kuid_user.exit.i

mapped_kuid_user.exit.i:                          ; preds = %if.end.i.i, %if.end.i.mapped_kuid_user.exit.i_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %28, %if.end.i.mapped_kuid_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i)
  %cmp.i.not.i = icmp eq i32 %retval.sroa.0.0.i.i, -1
  br i1 %cmp.i.not.i, label %mapped_kuid_user.exit.i.do.end52_crit_edge, label %sid_to_id.exit

mapped_kuid_user.exit.i.do.end52_crit_edge:       ; preds = %mapped_kuid_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52

sid_to_id.exit:                                   ; preds = %mapped_kuid_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.sroa.0.0.i.i, ptr %fattr, align 4
  br label %if.end56

do.end52:                                         ; preds = %mapped_kuid_user.exit.i.do.end52_crit_edge, %do.end.i149
  %retval.0.i150.ph = phi i32 [ -22, %mapped_kuid_user.exit.i.do.end52_crit_edge ], [ -5, %do.end.i149 ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i150.ph) #17
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %sid_to_id.exit, %if.end33.if.end56_crit_edge
  %owner_sid_ptr.0 = phi ptr [ null, %do.end52 ], [ %add.ptr3, %sid_to_id.exit ], [ %add.ptr3, %if.end33.if.end56_crit_edge ]
  %30 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %gsidoffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %if.end56.if.end78_crit_edge, label %if.then59

if.end56.if.end78_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then59:                                        ; preds = %if.end56
  %add.ptr.i151 = getelementptr i8, ptr %add.ptr4, i32 8
  %cmp.i152 = icmp ugt ptr %add.ptr.i151, %add.ptr
  br i1 %cmp.i152, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  %call.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %add.ptr4) #17
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef -22) #17
  br label %cleanup

if.end68:                                         ; preds = %if.then59
  %num_subauth.i157 = getelementptr inbounds %struct.smb_sid, ptr %add.ptr4, i32 0, i32 1
  %32 = ptrtoint ptr %num_subauth.i157 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_subauth.i157, align 1
  %conv.i158 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %33)
  %cmp.i159 = icmp ugt i8 %33, 15
  br i1 %cmp.i159, label %do.end.i161, label %if.end.i165, !prof !113

do.end.i161:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %call.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv.i158) #17
  br label %do.end74

if.end.i165:                                      ; preds = %if.end68
  %sub.i162 = add nsw i32 %conv.i158, -1
  %arrayidx.i163 = getelementptr %struct.smb_sid, ptr %add.ptr4, i32 0, i32 3, i32 %sub.i162
  %34 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx.i163, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  %cmp.i.i.i.i164 = icmp eq ptr %user_ns, @init_user_ns
  br i1 %cmp.i.i.i.i164, label %if.end.i165.mapped_kgid_user.exit.i_crit_edge, label %if.end.i47.i

if.end.i165.mapped_kgid_user.exit.i_crit_edge:    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapped_kgid_user.exit.i

if.end.i47.i:                                     ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #15
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %36, 0
  %call2.i46.i = tail call i32 @from_kgid(ptr noundef %user_ns, [1 x i32] %.fca.0.insert.i) #13
  br label %mapped_kgid_user.exit.i

mapped_kgid_user.exit.i:                          ; preds = %if.end.i47.i, %if.end.i165.mapped_kgid_user.exit.i_crit_edge
  %retval.sroa.0.0.i48.i = phi i32 [ %call2.i46.i, %if.end.i47.i ], [ %36, %if.end.i165.mapped_kgid_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i48.i)
  %cmp.i49.not.i = icmp eq i32 %retval.sroa.0.0.i48.i, -1
  br i1 %cmp.i49.not.i, label %mapped_kgid_user.exit.i.do.end74_crit_edge, label %sid_to_id.exit167

mapped_kgid_user.exit.i.do.end74_crit_edge:       ; preds = %mapped_kgid_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end74

sid_to_id.exit167:                                ; preds = %mapped_kgid_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %cf_gid.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 1
  %37 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.sroa.0.0.i48.i, ptr %cf_gid.i, align 4
  br label %if.end78

do.end74:                                         ; preds = %mapped_kgid_user.exit.i.do.end74_crit_edge, %do.end.i161
  %retval.0.i166.ph = phi i32 [ -22, %mapped_kgid_user.exit.i.do.end74_crit_edge ], [ -5, %do.end.i161 ]
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i166.ph) #17
  br label %if.end78

if.end78:                                         ; preds = %do.end74, %sid_to_id.exit167, %if.end56.if.end78_crit_edge
  %group_sid_ptr.0 = phi ptr [ null, %do.end74 ], [ %add.ptr4, %sid_to_id.exit167 ], [ %add.ptr4, %if.end56.if.end78_crit_edge ]
  %and79 = and i32 %conv17, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and79)
  %cmp80 = icmp eq i32 %and79, 1280
  br i1 %cmp80, label %if.then82, label %if.end78.if.end86_crit_edge

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %type16 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %type16, align 1
  %40 = or i16 %39, 4
  store i16 %40, ptr %type16, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end78.if.end86_crit_edge
  %and87 = and i32 %conv17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end94_crit_edge, label %if.then89

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %type16 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %type16, align 1
  %43 = or i16 %42, 16
  store i16 %43, ptr %type16, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end86.if.end94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool95.not = icmp eq i32 %7, 0
  br i1 %tobool95.not, label %if.end94.cleanup_crit_edge, label %if.then96

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then96:                                        ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %acl_state.i) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %default_acl_state.i) #13
  %tobool.not.i = icmp eq ptr %add.ptr6, null
  br i1 %tobool.not.i, label %if.then96.parse_dacl.exit_crit_edge, label %if.end.i170

if.then96.parse_dacl.exit_crit_edge:              ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_dacl.exit

if.end.i170:                                      ; preds = %if.then96
  %add.ptr.i168 = getelementptr i8, ptr %add.ptr6, i32 8
  %cmp.i169 = icmp ugt ptr %add.ptr.i168, %add.ptr
  br i1 %cmp.i169, label %if.end.i170.do.end.i173_crit_edge, label %lor.lhs.false.i

if.end.i170.do.end.i173_crit_edge:                ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i173

lor.lhs.false.i:                                  ; preds = %if.end.i170
  %size.i = getelementptr inbounds %struct.smb_acl, ptr %add.ptr6, i32 0, i32 1
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %size.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #13
  %conv.i171 = zext i16 %46 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr6, i32 %conv.i171
  %cmp2.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp2.i, label %lor.lhs.false.i.do.end.i173_crit_edge, label %do.body6.i

lor.lhs.false.i.do.end.i173_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i173

do.end.i173:                                      ; preds = %lor.lhs.false.i.do.end.i173_crit_edge, %if.end.i170.do.end.i173_crit_edge
  %call.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #17
  br label %parse_dacl.exit

do.body6.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %47 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body6.i.do.end20.i_crit_edge, label %do.end11.i

do.body6.i.do.end20.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20.i

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %add.ptr6, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #13
  %conv13.i = zext i16 %50 to i32
  %num_aces16.i = getelementptr inbounds %struct.smb_acl, ptr %add.ptr6, i32 0, i32 2
  %51 = ptrtoint ptr %num_aces16.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %num_aces16.i, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv13.i, i32 noundef %conv.i171, i32 noundef %53) #17
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end11.i, %do.body6.i.do.end20.i_crit_edge
  %num_aces21.i = getelementptr inbounds %struct.smb_acl, ptr %add.ptr6, i32 0, i32 2
  %54 = ptrtoint ptr %num_aces21.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %num_aces21.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  %57 = add i32 %56, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741823, i32 %57)
  %58 = icmp ult i32 %57, -1073741823
  br i1 %58, label %do.end20.i.parse_dacl.exit_crit_edge, label %if.end7.i.i

do.end20.i.parse_dacl.exit_crit_edge:             ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_dacl.exit

if.end7.i.i:                                      ; preds = %do.end20.i
  %59 = shl nuw i32 %56, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3264) #16
  %tobool31.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool31.not.i, label %if.end7.i.i.parse_dacl.exit_crit_edge, label %if.end33.i

if.end7.i.i.parse_dacl.exit_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_dacl.exit

if.end33.i:                                       ; preds = %if.end7.i.i
  %60 = call ptr @memset(ptr %acl_state.i, i32 0, i32 48)
  %mul.i.i = mul i32 %56, 12
  %add.i.i = add i32 %mul.i.i, 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #16
  %users52.i.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 5
  %61 = ptrtoint ptr %users52.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i.i.i, ptr %users52.i.i, align 4
  %tobool.not53.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not53.i.i, label %if.end33.i.parse_dacl.exit_crit_edge, label %kzalloc.exit42.i.thread.i

if.end33.i.parse_dacl.exit_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_dacl.exit

kzalloc.exit42.i.thread.i:                        ; preds = %if.end33.i
  %call9.i.i39.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #16
  %groups.i724.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %62 = ptrtoint ptr %groups.i724.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i39.i.i, ptr %groups.i724.i, align 4
  %tobool4.not.i725.i = icmp eq ptr %call9.i.i39.i.i, null
  br i1 %tobool4.not.i725.i, label %if.then5.i608.i, label %kzalloc.exit.thread50.i647.i

if.then5.i608.i:                                  ; preds = %kzalloc.exit42.i.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %users52.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %users52.i.i, align 4
  tail call void @kfree(ptr noundef %64) #13
  br label %parse_dacl.exit

kzalloc.exit.thread50.i647.i:                     ; preds = %kzalloc.exit42.i.thread.i
  %65 = call ptr @memset(ptr %default_acl_state.i, i32 0, i32 40)
  %call9.i.i.i644.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #16
  %users52.i645.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 5
  %66 = ptrtoint ptr %users52.i645.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call9.i.i.i644.i, ptr %users52.i645.i, align 4
  %tobool.not53.i646.i = icmp eq ptr %call9.i.i.i644.i, null
  br i1 %tobool.not53.i646.i, label %kzalloc.exit.thread50.i647.i.if.then40.i_crit_edge, label %if.end8.i.i40.i670.i

kzalloc.exit.thread50.i647.i.if.then40.i_crit_edge: ; preds = %kzalloc.exit.thread50.i647.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

if.end8.i.i40.i670.i:                             ; preds = %kzalloc.exit.thread50.i647.i
  %call9.i.i39.i669.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #16
  %groups.i673.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %67 = ptrtoint ptr %groups.i673.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call9.i.i39.i669.i, ptr %groups.i673.i, align 4
  %tobool4.not.i674.i = icmp eq ptr %call9.i.i39.i669.i, null
  br i1 %tobool4.not.i674.i, label %if.then5.i676.i, label %for.body.lr.ph.i

if.then5.i676.i:                                  ; preds = %if.end8.i.i40.i670.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %users52.i645.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %users52.i645.i, align 4
  tail call void @kfree(ptr noundef %69) #13
  br label %if.then40.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i.i40.i670.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %users.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 5
  %users248.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 5
  %cf_mode.i693.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 2
  %70 = getelementptr inbounds i8, ptr %temp_fattr.i, i32 4
  %71 = ptrtoint ptr %acl_state.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %acl_state.i.promoted = load i32, ptr %acl_state.i, align 1
  %72 = ptrtoint ptr %default_acl_state.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %default_acl_state.i.promoted = load i32, ptr %default_acl_state.i, align 1
  br label %for.body.i

if.then40.i:                                      ; preds = %if.then5.i676.i, %kzalloc.exit.thread50.i647.i.if.then40.i_crit_edge
  %users.i679.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 5
  %73 = ptrtoint ptr %users.i679.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %users.i679.i, align 4
  tail call void @kfree(ptr noundef %74) #13
  %groups.i680.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %75 = ptrtoint ptr %groups.i680.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %groups.i680.i, align 4
  tail call void @kfree(ptr noundef %76) #13
  br label %parse_dacl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %or228.i217 = phi i32 [ %default_acl_state.i.promoted, %for.body.lr.ph.i ], [ %or228.i219, %for.inc.i.for.body.i_crit_edge ]
  %or228.i213 = phi i32 [ %acl_state.i.promoted, %for.body.lr.ph.i ], [ %or228.i215, %for.inc.i.for.body.i_crit_edge ]
  %i.0753.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc273.i, %for.inc.i.for.body.i_crit_edge ]
  %acl_size.0752.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %conv73.i, %for.inc.i.for.body.i_crit_edge ]
  %acl_base.0751.i = phi ptr [ %add.ptr6, %for.body.lr.ph.i ], [ %add.ptr48.i, %for.inc.i.for.body.i_crit_edge ]
  %others_found.0.off0749.i = phi i1 [ false, %for.body.lr.ph.i ], [ %others_found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %group_found.0.off0748.i = phi i1 [ false, %for.body.lr.ph.i ], [ %group_found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %owner_found.0.off0746.i = phi i1 [ false, %for.body.lr.ph.i ], [ %owner_found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %mode.0744.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %mode.4.i, %for.inc.i.for.body.i_crit_edge ]
  %sub.ptr.rhs.cast.i = ptrtoint ptr %acl_base.0751.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %acl_size.0752.i)
  %cmp44.i = icmp ult i32 %sub.ptr.sub.i, %acl_size.0752.i
  br i1 %cmp44.i, label %for.body.i.for.end.i_crit_edge, label %if.end47.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end47.i:                                       ; preds = %for.body.i
  %add.ptr48.i = getelementptr i8, ptr %acl_base.0751.i, i32 %acl_size.0752.i
  %arrayidx.i175 = getelementptr ptr, ptr %call8.i.i, i32 %i.0753.i
  %77 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr48.i, ptr %arrayidx.i175, align 4
  %sub.ptr.rhs.cast51.i = ptrtoint ptr %add.ptr48.i to i32
  %sub.ptr.sub52.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub52.i)
  %cmp53.i = icmp ult i32 %sub.ptr.sub52.i, 16
  br i1 %cmp53.i, label %if.end47.i.for.end.i_crit_edge, label %lor.lhs.false55.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

lor.lhs.false55.i:                                ; preds = %if.end47.i
  %sid.i = getelementptr inbounds %struct.smb_ace, ptr %add.ptr48.i, i32 0, i32 4
  %num_subauth.i176 = getelementptr inbounds %struct.smb_sid, ptr %sid.i, i32 0, i32 1
  %78 = ptrtoint ptr %num_subauth.i176 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_subauth.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %79)
  %cmp58.i = icmp ugt i8 %79, 15
  br i1 %cmp58.i, label %lor.lhs.false55.i.for.end.i_crit_edge, label %lor.lhs.false60.i

lor.lhs.false55.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

lor.lhs.false60.i:                                ; preds = %lor.lhs.false55.i
  %conv57.i = zext i8 %79 to i32
  %mul.i = shl nuw nsw i32 %conv57.i, 2
  %add.i = add nuw nsw i32 %mul.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub52.i, i32 %add.i)
  %cmp68.i = icmp ult i32 %sub.ptr.sub52.i, %add.i
  br i1 %cmp68.i, label %lor.lhs.false60.i.for.end.i_crit_edge, label %lor.lhs.false70.i

lor.lhs.false60.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

lor.lhs.false70.i:                                ; preds = %lor.lhs.false60.i
  %size72.i = getelementptr inbounds %struct.smb_ace, ptr %add.ptr48.i, i32 0, i32 2
  %80 = ptrtoint ptr %size72.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %size72.i, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #13
  %conv73.i = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv73.i)
  %cmp80.i = icmp ugt i32 %add.i, %conv73.i
  br i1 %cmp80.i, label %lor.lhs.false70.i.for.end.i_crit_edge, label %if.end83.i

lor.lhs.false70.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end83.i:                                       ; preds = %lor.lhs.false70.i
  %access_req.i = getelementptr inbounds %struct.smb_ace, ptr %add.ptr48.i, i32 0, i32 3
  %83 = ptrtoint ptr %access_req.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %access_req.i, align 1
  %call88.i = tail call i32 @smb_map_generic_desired_access(i32 noundef %84) #13
  %85 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i175, align 4
  %access_req90.i = getelementptr inbounds %struct.smb_ace, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %access_req90.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %call88.i, ptr %access_req90.i, align 1
  %88 = load ptr, ptr %arrayidx.i175, align 4
  %sid92.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 4
  %call93.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef nonnull @sid_unix_NFS_mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %if.else.i

if.then95.i:                                      ; preds = %if.end83.i
  %89 = ptrtoint ptr %acl_state.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %or228.i213, ptr %acl_state.i, align 1
  %90 = ptrtoint ptr %default_acl_state.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %or228.i217, ptr %default_acl_state.i, align 1
  %arrayidx98.i = getelementptr %struct.smb_ace, ptr %88, i32 0, i32 4, i32 3, i32 2
  %91 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx98.i, align 1
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #13
  %conv99.i = trunc i32 %93 to i16
  %94 = ptrtoint ptr %cf_mode.i693.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv99.i, ptr %cf_mode.i693.i, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br i1 %owner_found.0.off0746.i, label %if.then95.i.if.then275.i_crit_edge, label %if.then95.i.if.end324.i_crit_edge

if.then95.i.if.end324.i_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end324.i

if.then95.i.if.then275.i_crit_edge:               ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then275.i

if.else.i:                                        ; preds = %if.end83.i
  %call102.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef %owner_sid_ptr.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.then104.i, label %if.else122.i

if.then104.i:                                     ; preds = %if.else.i
  %access_req106.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 3
  %95 = ptrtoint ptr %access_req106.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %access_req106.i, align 1
  %97 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %88, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %96) #13
  %and.i.i = and i32 %99, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i681.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i681.i, label %if.end7.i682.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then104.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %100 = load i32, ptr @ksmbd_debug_types, align 4
  %and1.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.access_flags_to_mode.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.access_flags_to_mode.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %access_flags_to_mode.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #17
  br label %access_flags_to_mode.exit.i

if.end7.i682.i:                                   ; preds = %if.then104.i
  %101 = and i32 %99, -2147483511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %102 = icmp eq i32 %101, 0
  %mode.0.i.i = select i1 %102, i16 0, i16 292
  %103 = and i32 %99, 1073742102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %if.end7.i682.i.if.end29.i.i_crit_edge, label %if.then19.i.i

if.end7.i682.i.if.end29.i.i_crit_edge:            ; preds = %if.end7.i682.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then19.i.i:                                    ; preds = %if.end7.i682.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %cf_mode.i693.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %cf_mode.i693.i, align 4
  %107 = and i16 %106, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %107)
  %cmp.i.i = icmp eq i16 %107, 16384
  %spec.select.v.i.i = select i1 %cmp.i.i, i16 219, i16 146
  %spec.select.i.i = or i16 %spec.select.v.i.i, %mode.0.i.i
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then19.i.i, %if.end7.i682.i.if.end29.i.i_crit_edge
  %mode.1.i.i = phi i16 [ %mode.0.i.i, %if.end7.i682.i.if.end29.i.i_crit_edge ], [ %spec.select.i.i, %if.then19.i.i ]
  %108 = and i32 %99, 536870944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %109 = icmp eq i32 %108, 0
  %110 = or i16 %mode.1.i.i, 73
  %mode.2.i.i = select i1 %109, i16 %mode.1.i.i, i16 %110
  %111 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %98, label %if.end29.i.i.do.body49.i.i_crit_edge [
    i8 1, label %if.end29.i.i.if.then45.i.i_crit_edge
    i8 6, label %if.end29.i.i.if.then45.i.i_crit_edge221
  ]

if.end29.i.i.if.then45.i.i_crit_edge221:          ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i.i

if.end29.i.i.if.then45.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i.i

if.end29.i.i.do.body49.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.i.i

if.then45.i.i:                                    ; preds = %if.end29.i.i.if.then45.i.i_crit_edge, %if.end29.i.i.if.then45.i.i_crit_edge221
  %neg.i.i = xor i16 %mode.2.i.i, -1
  br label %do.body49.i.i

do.body49.i.i:                                    ; preds = %if.then45.i.i, %if.end29.i.i.do.body49.i.i_crit_edge
  %mode.3.i.i = phi i16 [ %neg.i.i, %if.then45.i.i ], [ %mode.2.i.i, %if.end29.i.i.do.body49.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %112 = load i32, ptr @ksmbd_debug_types, align 4
  %and50.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %do.body49.i.i.access_flags_to_mode.exit.i_crit_edge, label %do.end55.i.i

do.body49.i.i.access_flags_to_mode.exit.i_crit_edge: ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %access_flags_to_mode.exit.i

do.end55.i.i:                                     ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv57.i.i = zext i16 %mode.3.i.i to i32
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %99, i32 noundef %conv57.i.i) #17
  br label %access_flags_to_mode.exit.i

access_flags_to_mode.exit.i:                      ; preds = %do.end55.i.i, %do.body49.i.i.access_flags_to_mode.exit.i_crit_edge, %do.end.i.i, %if.then.i.i.access_flags_to_mode.exit.i_crit_edge
  %retval.0.i683.i = phi i16 [ 511, %do.end.i.i ], [ 511, %if.then.i.i.access_flags_to_mode.exit.i_crit_edge ], [ %mode.3.i.i, %do.end55.i.i ], [ %mode.3.i.i, %do.body49.i.i.access_flags_to_mode.exit.i_crit_edge ]
  %113 = and i16 %retval.0.i683.i, 448
  %114 = and i16 %mode.0744.i, -449
  %or602.i = or i16 %113, %114
  %mode.1.i = select i1 %owner_found.0.off0746.i, i16 %mode.0744.i, i16 %or602.i
  br label %for.inc.i

if.else122.i:                                     ; preds = %if.else.i
  %call125.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef %group_sid_ptr.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %if.else122.i.if.then138.i_crit_edge, label %lor.lhs.false127.i

if.else122.i.if.then138.i_crit_edge:              ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then138.i

lor.lhs.false127.i:                               ; preds = %if.else122.i
  %num_subauth133.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %num_subauth133.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_subauth133.i, align 1
  %conv134.i = zext i8 %116 to i32
  %sub.i177 = add nsw i32 %conv134.i, -1
  %arrayidx135.i = getelementptr %struct.smb_ace, ptr %88, i32 0, i32 4, i32 3, i32 %sub.i177
  %117 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %arrayidx135.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16908288, i32 %118)
  %cmp136.i = icmp eq i32 %118, 16908288
  br i1 %cmp136.i, label %lor.lhs.false127.i.if.then138.i_crit_edge, label %if.else158.i

lor.lhs.false127.i.if.then138.i_crit_edge:        ; preds = %lor.lhs.false127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then138.i

if.then138.i:                                     ; preds = %lor.lhs.false127.i.if.then138.i_crit_edge, %if.else122.i.if.then138.i_crit_edge
  %access_req140.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 3
  %119 = ptrtoint ptr %access_req140.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %access_req140.i, align 1
  %121 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %88, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %120) #13
  %and.i684.i = and i32 %123, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i684.i)
  %tobool.not.i685.i = icmp eq i32 %and.i684.i, 0
  br i1 %tobool.not.i685.i, label %if.end7.i692.i, label %if.then.i688.i

if.then.i688.i:                                   ; preds = %if.then138.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %124 = load i32, ptr @ksmbd_debug_types, align 4
  %and1.i686.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i686.i)
  %tobool2.not.i687.i = icmp eq i32 %and1.i686.i, 0
  br i1 %tobool2.not.i687.i, label %if.then.i688.i.access_flags_to_mode.exit711.i_crit_edge, label %do.end.i690.i

if.then.i688.i.access_flags_to_mode.exit711.i_crit_edge: ; preds = %if.then.i688.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %access_flags_to_mode.exit711.i

do.end.i690.i:                                    ; preds = %if.then.i688.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i689.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #17
  br label %access_flags_to_mode.exit711.i

if.end7.i692.i:                                   ; preds = %if.then138.i
  %125 = and i32 %123, -2147483511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %126 = icmp eq i32 %125, 0
  %mode.0.i691.i = select i1 %126, i16 0, i16 292
  %127 = and i32 %123, 1073742102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %if.end7.i692.i.if.end29.i700.i_crit_edge, label %if.then19.i697.i

if.end7.i692.i.if.end29.i700.i_crit_edge:         ; preds = %if.end7.i692.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i700.i

if.then19.i697.i:                                 ; preds = %if.end7.i692.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %cf_mode.i693.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %cf_mode.i693.i, align 4
  %131 = and i16 %130, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %131)
  %cmp.i694.i = icmp eq i16 %131, 16384
  %spec.select.v.i695.i = select i1 %cmp.i694.i, i16 219, i16 146
  %spec.select.i696.i = or i16 %spec.select.v.i695.i, %mode.0.i691.i
  br label %if.end29.i700.i

if.end29.i700.i:                                  ; preds = %if.then19.i697.i, %if.end7.i692.i.if.end29.i700.i_crit_edge
  %mode.1.i698.i = phi i16 [ %mode.0.i691.i, %if.end7.i692.i.if.end29.i700.i_crit_edge ], [ %spec.select.i696.i, %if.then19.i697.i ]
  %132 = and i32 %123, 536870944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %133 = icmp eq i32 %132, 0
  %134 = or i16 %mode.1.i698.i, 73
  %mode.2.i699.i = select i1 %133, i16 %mode.1.i698.i, i16 %134
  %135 = zext i8 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %122, label %if.end29.i700.i.do.body49.i706.i_crit_edge [
    i8 1, label %if.end29.i700.i.if.then45.i702.i_crit_edge
    i8 6, label %if.end29.i700.i.if.then45.i702.i_crit_edge222
  ]

if.end29.i700.i.if.then45.i702.i_crit_edge222:    ; preds = %if.end29.i700.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i702.i

if.end29.i700.i.if.then45.i702.i_crit_edge:       ; preds = %if.end29.i700.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i702.i

if.end29.i700.i.do.body49.i706.i_crit_edge:       ; preds = %if.end29.i700.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.i706.i

if.then45.i702.i:                                 ; preds = %if.end29.i700.i.if.then45.i702.i_crit_edge, %if.end29.i700.i.if.then45.i702.i_crit_edge222
  %neg.i701.i = xor i16 %mode.2.i699.i, -1
  br label %do.body49.i706.i

do.body49.i706.i:                                 ; preds = %if.then45.i702.i, %if.end29.i700.i.do.body49.i706.i_crit_edge
  %mode.3.i703.i = phi i16 [ %neg.i701.i, %if.then45.i702.i ], [ %mode.2.i699.i, %if.end29.i700.i.do.body49.i706.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %136 = load i32, ptr @ksmbd_debug_types, align 4
  %and50.i704.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i704.i)
  %tobool51.not.i705.i = icmp eq i32 %and50.i704.i, 0
  br i1 %tobool51.not.i705.i, label %do.body49.i706.i.access_flags_to_mode.exit711.i_crit_edge, label %do.end55.i709.i

do.body49.i706.i.access_flags_to_mode.exit711.i_crit_edge: ; preds = %do.body49.i706.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %access_flags_to_mode.exit711.i

do.end55.i709.i:                                  ; preds = %do.body49.i706.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv57.i707.i = zext i16 %mode.3.i703.i to i32
  %call58.i708.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %123, i32 noundef %conv57.i707.i) #17
  br label %access_flags_to_mode.exit711.i

access_flags_to_mode.exit711.i:                   ; preds = %do.end55.i709.i, %do.body49.i706.i.access_flags_to_mode.exit711.i_crit_edge, %do.end.i690.i, %if.then.i688.i.access_flags_to_mode.exit711.i_crit_edge
  %retval.0.i710.i = phi i16 [ 511, %do.end.i690.i ], [ 511, %if.then.i688.i.access_flags_to_mode.exit711.i_crit_edge ], [ %mode.3.i703.i, %do.end55.i709.i ], [ %mode.3.i703.i, %do.body49.i706.i.access_flags_to_mode.exit711.i_crit_edge ]
  %137 = and i16 %retval.0.i710.i, 56
  %138 = and i16 %mode.0744.i, -57
  %or155603.i = or i16 %137, %138
  %mode.2.i = select i1 %group_found.0.off0748.i, i16 %mode.0744.i, i16 %or155603.i
  br label %for.inc.i

if.else158.i:                                     ; preds = %lor.lhs.false127.i
  %call161.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef nonnull @sid_everyone) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %if.then163.i, label %if.else183.i

if.then163.i:                                     ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #15
  %access_req165.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 3
  %139 = ptrtoint ptr %access_req165.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %access_req165.i, align 1
  %141 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %88, align 1
  %conv168.i = zext i8 %142 to i32
  %call169.i = tail call fastcc zeroext i16 @access_flags_to_mode(ptr noundef %fattr, i32 noundef %140, i32 noundef %conv168.i) #13
  %143 = and i16 %call169.i, 7
  %144 = and i16 %mode.0744.i, -8
  %or180604.i = or i16 %143, %144
  %mode.3.i = select i1 %others_found.0.off0749.i, i16 %mode.0744.i, i16 %or180604.i
  br label %for.inc.i

if.else183.i:                                     ; preds = %if.else158.i
  %call186.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef nonnull @creator_owner) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %tobool187.not.i = icmp eq i32 %call186.i, 0
  br i1 %tobool187.not.i, label %if.else183.i.for.inc.i_crit_edge, label %if.else189.i

if.else183.i.for.inc.i_crit_edge:                 ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.else189.i:                                     ; preds = %if.else183.i
  %call192.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef nonnull @creator_group) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %if.else189.i.for.inc.i_crit_edge, label %if.else195.i

if.else189.i.for.inc.i_crit_edge:                 ; preds = %if.else189.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.else195.i:                                     ; preds = %if.else189.i
  %call198.i = tail call i32 @compare_sids(ptr noundef %sid92.i, ptr noundef nonnull @sid_authusers) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %tobool199.not.i = icmp eq i32 %call198.i, 0
  br i1 %tobool199.not.i, label %if.else195.i.for.inc.i_crit_edge, label %if.else201.i

if.else195.i.for.inc.i_crit_edge:                 ; preds = %if.else195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.else201.i:                                     ; preds = %if.else195.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %temp_fattr.i) #13
  %145 = call ptr @memset(ptr %70, i32 255, i32 20)
  %access_req203.i = getelementptr inbounds %struct.smb_ace, ptr %88, i32 0, i32 3
  %146 = ptrtoint ptr %access_req203.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %access_req203.i, align 1
  %148 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %88, align 1
  %conv206.i = zext i8 %149 to i32
  %call207.i = tail call fastcc zeroext i16 @access_flags_to_mode(ptr noundef %fattr, i32 noundef %147, i32 noundef %conv206.i) #13
  %150 = ptrtoint ptr %temp_fattr.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -1, ptr %temp_fattr.i, align 4
  %151 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i175, align 4
  %sid209.i = getelementptr inbounds %struct.smb_ace, ptr %152, i32 0, i32 4
  %call210.i = call fastcc i32 @sid_to_id(ptr noundef %user_ns, ptr noundef %sid209.i, i32 noundef 1, ptr noundef nonnull %temp_fattr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i)
  %tobool211.not.i = icmp eq i32 %call210.i, 0
  br i1 %tobool211.not.i, label %lor.lhs.false212.i, label %if.else201.i.do.end222.i_crit_edge

if.else201.i.do.end222.i_crit_edge:               ; preds = %if.else201.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end222.i

lor.lhs.false212.i:                               ; preds = %if.else201.i
  %153 = ptrtoint ptr %temp_fattr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.fca.0.load.i = load i32, ptr %temp_fattr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.0.load.i)
  %cmp.i712.i = icmp eq i32 %.fca.0.load.i, -1
  br i1 %cmp.i712.i, label %lor.lhs.false212.i.do.end222.i_crit_edge, label %if.end225.i

lor.lhs.false212.i.do.end222.i_crit_edge:         ; preds = %lor.lhs.false212.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end222.i

do.end222.i:                                      ; preds = %lor.lhs.false212.i.do.end222.i_crit_edge, %if.else201.i.do.end222.i_crit_edge
  %call224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.42, i32 noundef %call210.i) #17
  br label %cleanup.i

if.end225.i:                                      ; preds = %lor.lhs.false212.i
  call void @__sanitizer_cov_trace_pc() #15
  %154 = lshr i16 %call207.i, 6
  %155 = and i16 %154, 3
  %156 = or i16 %155, 4
  %or228.i = zext i16 %156 to i32
  %157 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %users.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %arrayidx230.i = getelementptr %struct.posix_ace_state_array, ptr %158, i32 0, i32 1, i32 %160
  %161 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %.fca.0.load.i, ptr %arrayidx230.i, align 4
  %162 = load i32, ptr %158, align 4
  %inc.i = add i32 %162, 1
  store i32 %inc.i, ptr %158, align 4
  %perms.i = getelementptr %struct.posix_ace_state_array, ptr %158, i32 0, i32 1, i32 %162, i32 1
  %163 = ptrtoint ptr %perms.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or228.i, ptr %perms.i, align 4
  %164 = ptrtoint ptr %users248.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %users248.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  %arrayidx252.i = getelementptr %struct.posix_ace_state_array, ptr %165, i32 0, i32 1, i32 %167
  %168 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %.fca.0.load.i, ptr %arrayidx252.i, align 4
  %169 = load i32, ptr %165, align 4
  %inc262.i = add i32 %169, 1
  store i32 %inc262.i, ptr %165, align 4
  %perms264.i = getelementptr %struct.posix_ace_state_array, ptr %165, i32 0, i32 1, i32 %169, i32 1
  %170 = ptrtoint ptr %perms264.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or228.i, ptr %perms264.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end225.i, %do.end222.i
  %or228.i220 = phi i32 [ %or228.i, %if.end225.i ], [ %or228.i217, %do.end222.i ]
  %or228.i216 = phi i32 [ %or228.i, %if.end225.i ], [ %or228.i213, %do.end222.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %temp_fattr.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i, %if.else195.i.for.inc.i_crit_edge, %if.else189.i.for.inc.i_crit_edge, %if.else183.i.for.inc.i_crit_edge, %if.then163.i, %access_flags_to_mode.exit711.i, %access_flags_to_mode.exit.i
  %or228.i219 = phi i32 [ %or228.i217, %access_flags_to_mode.exit711.i ], [ %or228.i220, %cleanup.i ], [ %or228.i217, %if.else195.i.for.inc.i_crit_edge ], [ %or228.i217, %if.else189.i.for.inc.i_crit_edge ], [ %or228.i217, %if.else183.i.for.inc.i_crit_edge ], [ %or228.i217, %if.then163.i ], [ %or228.i217, %access_flags_to_mode.exit.i ]
  %or228.i215 = phi i32 [ %or228.i213, %access_flags_to_mode.exit711.i ], [ %or228.i216, %cleanup.i ], [ %or228.i213, %if.else195.i.for.inc.i_crit_edge ], [ %or228.i213, %if.else189.i.for.inc.i_crit_edge ], [ %or228.i213, %if.else183.i.for.inc.i_crit_edge ], [ %or228.i213, %if.then163.i ], [ %or228.i213, %access_flags_to_mode.exit.i ]
  %mode.4.i = phi i16 [ %mode.2.i, %access_flags_to_mode.exit711.i ], [ %mode.0744.i, %cleanup.i ], [ %mode.0744.i, %if.else195.i.for.inc.i_crit_edge ], [ %mode.0744.i, %if.else189.i.for.inc.i_crit_edge ], [ %mode.0744.i, %if.else183.i.for.inc.i_crit_edge ], [ %mode.3.i, %if.then163.i ], [ %mode.1.i, %access_flags_to_mode.exit.i ]
  %owner_found.1.off0.i = phi i1 [ %owner_found.0.off0746.i, %access_flags_to_mode.exit711.i ], [ %owner_found.0.off0746.i, %cleanup.i ], [ %owner_found.0.off0746.i, %if.else195.i.for.inc.i_crit_edge ], [ %owner_found.0.off0746.i, %if.else189.i.for.inc.i_crit_edge ], [ %owner_found.0.off0746.i, %if.else183.i.for.inc.i_crit_edge ], [ %owner_found.0.off0746.i, %if.then163.i ], [ true, %access_flags_to_mode.exit.i ]
  %group_found.1.off0.i = phi i1 [ true, %access_flags_to_mode.exit711.i ], [ %group_found.0.off0748.i, %cleanup.i ], [ %group_found.0.off0748.i, %if.else195.i.for.inc.i_crit_edge ], [ %group_found.0.off0748.i, %if.else189.i.for.inc.i_crit_edge ], [ %group_found.0.off0748.i, %if.else183.i.for.inc.i_crit_edge ], [ %group_found.0.off0748.i, %if.then163.i ], [ %group_found.0.off0748.i, %access_flags_to_mode.exit.i ]
  %others_found.1.off0.i = phi i1 [ %others_found.0.off0749.i, %access_flags_to_mode.exit711.i ], [ %others_found.0.off0749.i, %cleanup.i ], [ %others_found.0.off0749.i, %if.else195.i.for.inc.i_crit_edge ], [ %others_found.0.off0749.i, %if.else189.i.for.inc.i_crit_edge ], [ %others_found.0.off0749.i, %if.else183.i.for.inc.i_crit_edge ], [ true, %if.then163.i ], [ %others_found.0.off0749.i, %access_flags_to_mode.exit.i ]
  %inc273.i = add nuw nsw i32 %i.0753.i, 1
  %exitcond.not.i = icmp eq i32 %inc273.i, %56
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %lor.lhs.false70.i.for.end.i_crit_edge, %lor.lhs.false60.i.for.end.i_crit_edge, %lor.lhs.false55.i.for.end.i_crit_edge, %if.end47.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %or228.i218 = phi i32 [ %or228.i217, %if.end47.i.for.end.i_crit_edge ], [ %or228.i217, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %or228.i217, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %or228.i217, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %or228.i217, %for.body.i.for.end.i_crit_edge ], [ %or228.i219, %for.inc.i.for.end.i_crit_edge ]
  %or228.i214 = phi i32 [ %or228.i213, %if.end47.i.for.end.i_crit_edge ], [ %or228.i213, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %or228.i213, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %or228.i213, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %or228.i213, %for.body.i.for.end.i_crit_edge ], [ %or228.i215, %for.inc.i.for.end.i_crit_edge ]
  %mode.0740.i = phi i16 [ %mode.0744.i, %if.end47.i.for.end.i_crit_edge ], [ %mode.0744.i, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %mode.0744.i, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %mode.0744.i, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %mode.0744.i, %for.body.i.for.end.i_crit_edge ], [ %mode.4.i, %for.inc.i.for.end.i_crit_edge ]
  %owner_found.0.off0738.i = phi i1 [ %owner_found.0.off0746.i, %if.end47.i.for.end.i_crit_edge ], [ %owner_found.0.off0746.i, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %owner_found.0.off0746.i, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %owner_found.0.off0746.i, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %owner_found.0.off0746.i, %for.body.i.for.end.i_crit_edge ], [ %owner_found.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %group_found.0.off0736.i = phi i1 [ %group_found.0.off0748.i, %if.end47.i.for.end.i_crit_edge ], [ %group_found.0.off0748.i, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %group_found.0.off0748.i, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %group_found.0.off0748.i, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %group_found.0.off0748.i, %for.body.i.for.end.i_crit_edge ], [ %group_found.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %others_found.0.off0734.i = phi i1 [ %others_found.0.off0749.i, %if.end47.i.for.end.i_crit_edge ], [ %others_found.0.off0749.i, %lor.lhs.false55.i.for.end.i_crit_edge ], [ %others_found.0.off0749.i, %lor.lhs.false60.i.for.end.i_crit_edge ], [ %others_found.0.off0749.i, %lor.lhs.false70.i.for.end.i_crit_edge ], [ %others_found.0.off0749.i, %for.body.i.for.end.i_crit_edge ], [ %others_found.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %171 = ptrtoint ptr %acl_state.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %or228.i214, ptr %acl_state.i, align 1
  %172 = ptrtoint ptr %default_acl_state.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 %or228.i218, ptr %default_acl_state.i, align 1
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br i1 %owner_found.0.off0738.i, label %for.end.i.if.then275.i_crit_edge, label %for.end.i.if.end324.i_crit_edge

for.end.i.if.end324.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end324.i

for.end.i.if.then275.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then275.i

if.then275.i:                                     ; preds = %for.end.i.if.then275.i_crit_edge, %if.then95.i.if.then275.i_crit_edge
  %others_found.0.off0734792.i = phi i1 [ %others_found.0.off0749.i, %if.then95.i.if.then275.i_crit_edge ], [ %others_found.0.off0734.i, %for.end.i.if.then275.i_crit_edge ]
  %group_found.0.off0736790.i = phi i1 [ %group_found.0.off0748.i, %if.then95.i.if.then275.i_crit_edge ], [ %group_found.0.off0736.i, %for.end.i.if.then275.i_crit_edge ]
  %mode.0740786.i = phi i16 [ %mode.0744.i, %if.then95.i.if.then275.i_crit_edge ], [ %mode.0740.i, %for.end.i.if.then275.i_crit_edge ]
  %173 = lshr i16 %mode.0740786.i, 6
  %174 = and i16 %173, 3
  %175 = or i16 %174, 4
  %or279.i = zext i16 %175 to i32
  %176 = ptrtoint ptr %acl_state.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or279.i, ptr %acl_state.i, align 4
  %177 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %users.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %arrayidx286.i = getelementptr %struct.posix_ace_state_array, ptr %178, i32 0, i32 1, i32 %180
  %181 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %fattr, align 4
  %183 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx286.i, align 4
  %184 = load i32, ptr %178, align 4
  %inc296.i = add i32 %184, 1
  store i32 %inc296.i, ptr %178, align 4
  %perms298.i = getelementptr %struct.posix_ace_state_array, ptr %178, i32 0, i32 1, i32 %184, i32 1
  %185 = ptrtoint ptr %perms298.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or279.i, ptr %perms298.i, align 4
  %186 = ptrtoint ptr %default_acl_state.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or279.i, ptr %default_acl_state.i, align 4
  %187 = ptrtoint ptr %users248.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %users248.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %arrayidx310.i = getelementptr %struct.posix_ace_state_array, ptr %188, i32 0, i32 1, i32 %190
  %191 = load i32, ptr %fattr, align 4
  %192 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx310.i, align 4
  %193 = load i32, ptr %188, align 4
  %inc320.i = add i32 %193, 1
  store i32 %inc320.i, ptr %188, align 4
  %perms322.i = getelementptr %struct.posix_ace_state_array, ptr %188, i32 0, i32 1, i32 %193, i32 1
  %194 = ptrtoint ptr %perms322.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or279.i, ptr %perms322.i, align 4
  br i1 %group_found.0.off0736790.i, label %if.then275.i.if.then326.i_crit_edge, label %if.then275.i.if.end368.i_crit_edge

if.then275.i.if.end368.i_crit_edge:               ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.i

if.then275.i.if.then326.i_crit_edge:              ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then326.i

if.end324.i:                                      ; preds = %for.end.i.if.end324.i_crit_edge, %if.then95.i.if.end324.i_crit_edge
  %others_found.0.off0734791.i = phi i1 [ %others_found.0.off0749.i, %if.then95.i.if.end324.i_crit_edge ], [ %others_found.0.off0734.i, %for.end.i.if.end324.i_crit_edge ]
  %group_found.0.off0736789.i = phi i1 [ %group_found.0.off0748.i, %if.then95.i.if.end324.i_crit_edge ], [ %group_found.0.off0736.i, %for.end.i.if.end324.i_crit_edge ]
  %mode.0740787.i = phi i16 [ %mode.0744.i, %if.then95.i.if.end324.i_crit_edge ], [ %mode.0740.i, %for.end.i.if.end324.i_crit_edge ]
  br i1 %group_found.0.off0736789.i, label %if.end324.i.if.then326.i_crit_edge, label %if.end324.i.if.end368.i_crit_edge

if.end324.i.if.end368.i_crit_edge:                ; preds = %if.end324.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.i

if.end324.i.if.then326.i_crit_edge:               ; preds = %if.end324.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then326.i

if.then326.i:                                     ; preds = %if.end324.i.if.then326.i_crit_edge, %if.then275.i.if.then326.i_crit_edge
  %mode.0740787795.i = phi i16 [ %mode.0740786.i, %if.then275.i.if.then326.i_crit_edge ], [ %mode.0740787.i, %if.end324.i.if.then326.i_crit_edge ]
  %others_found.0.off0734791794.i = phi i1 [ %others_found.0.off0734792.i, %if.then275.i.if.then326.i_crit_edge ], [ %others_found.0.off0734791.i, %if.end324.i.if.then326.i_crit_edge ]
  %195 = lshr i16 %mode.0740787795.i, 3
  %196 = and i16 %195, 7
  %197 = zext i16 %196 to i32
  %group.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 1
  %198 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %group.i, align 4
  %groups.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %199 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %groups.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %arrayidx334.i = getelementptr %struct.posix_ace_state_array, ptr %200, i32 0, i32 1, i32 %202
  %cf_gid.i178 = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 1
  %203 = ptrtoint ptr %cf_gid.i178 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cf_gid.i178, align 4
  %205 = ptrtoint ptr %arrayidx334.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %arrayidx334.i, align 4
  %206 = load i32, ptr %200, align 4
  %inc342.i = add i32 %206, 1
  store i32 %inc342.i, ptr %200, align 4
  %perms344.i = getelementptr %struct.posix_ace_state_array, ptr %200, i32 0, i32 1, i32 %206, i32 1
  %207 = ptrtoint ptr %perms344.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %197, ptr %perms344.i, align 4
  %group349.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 1
  %208 = ptrtoint ptr %group349.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %197, ptr %group349.i, align 4
  %groups351.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %209 = ptrtoint ptr %groups351.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %groups351.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 4
  %arrayidx355.i = getelementptr %struct.posix_ace_state_array, ptr %210, i32 0, i32 1, i32 %212
  %213 = load i32, ptr %cf_gid.i178, align 4
  %214 = ptrtoint ptr %arrayidx355.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx355.i, align 4
  %215 = load i32, ptr %210, align 4
  %inc364.i = add i32 %215, 1
  store i32 %inc364.i, ptr %210, align 4
  %perms366.i = getelementptr %struct.posix_ace_state_array, ptr %210, i32 0, i32 1, i32 %215, i32 1
  %216 = ptrtoint ptr %perms366.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %197, ptr %perms366.i, align 4
  br i1 %others_found.0.off0734791794.i, label %if.then326.i.if.then370.i_crit_edge, label %if.then326.i.if.end388.i_crit_edge

if.then326.i.if.end388.i_crit_edge:               ; preds = %if.then326.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end388.i

if.then326.i.if.then370.i_crit_edge:              ; preds = %if.then326.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then370.i

if.end368.i:                                      ; preds = %if.end324.i.if.end368.i_crit_edge, %if.then275.i.if.end368.i_crit_edge
  %others_found.0.off0734791793.i = phi i1 [ %others_found.0.off0734791.i, %if.end324.i.if.end368.i_crit_edge ], [ %others_found.0.off0734792.i, %if.then275.i.if.end368.i_crit_edge ]
  %mode.0740788.i = phi i16 [ %mode.0740787.i, %if.end324.i.if.end368.i_crit_edge ], [ %mode.0740786.i, %if.then275.i.if.end368.i_crit_edge ]
  br i1 %others_found.0.off0734791793.i, label %if.end368.i.if.then370.i_crit_edge, label %if.end368.i.if.end388.i_crit_edge

if.end368.i.if.end388.i_crit_edge:                ; preds = %if.end368.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end388.i

if.end368.i.if.then370.i_crit_edge:               ; preds = %if.end368.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then370.i

if.then370.i:                                     ; preds = %if.end368.i.if.then370.i_crit_edge, %if.then326.i.if.then370.i_crit_edge
  %mode.0740788796.i = phi i16 [ %mode.0740787795.i, %if.then326.i.if.then370.i_crit_edge ], [ %mode.0740788.i, %if.end368.i.if.then370.i_crit_edge ]
  %217 = ptrtoint ptr %cf_mode.i693.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %cf_mode.i693.i, align 4
  %219 = and i16 %218, -8
  %220 = and i16 %mode.0740788796.i, 7
  %and376.i = zext i16 %220 to i32
  %or379601.i = or i16 %219, %220
  store i16 %or379601.i, ptr %cf_mode.i693.i, align 4
  %other.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 2
  %221 = ptrtoint ptr %other.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %and376.i, ptr %other.i, align 4
  %other386.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 2
  %222 = ptrtoint ptr %other386.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %and376.i, ptr %other386.i, align 4
  br label %if.end388.i

if.end388.i:                                      ; preds = %if.then370.i, %if.end368.i.if.end388.i_crit_edge, %if.then326.i.if.end388.i_crit_edge
  %223 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %users.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool391.not.i = icmp eq i32 %226, 0
  br i1 %tobool391.not.i, label %lor.lhs.false392.i, label %if.end388.i.if.then396.i_crit_edge

if.end388.i.if.then396.i_crit_edge:               ; preds = %if.end388.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then396.i

lor.lhs.false392.i:                               ; preds = %if.end388.i
  %groups393.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %227 = ptrtoint ptr %groups393.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %groups393.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool395.not.i = icmp eq i32 %230, 0
  br i1 %tobool395.not.i, label %lor.lhs.false392.i.if.end410.i_crit_edge, label %lor.lhs.false392.i.if.then396.i_crit_edge

lor.lhs.false392.i.if.then396.i_crit_edge:        ; preds = %lor.lhs.false392.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then396.i

lor.lhs.false392.i.if.end410.i_crit_edge:         ; preds = %lor.lhs.false392.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end410.i

if.then396.i:                                     ; preds = %lor.lhs.false392.i.if.then396.i_crit_edge, %if.end388.i.if.then396.i_crit_edge
  %mask.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 4
  %231 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 7, ptr %mask.i, align 4
  %232 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %224, align 4
  %groups400.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %234 = ptrtoint ptr %groups400.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %groups400.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  %add402.i = add i32 %233, 4
  %add403.i = add i32 %add402.i, %237
  %call404.i = tail call ptr @posix_acl_alloc(i32 noundef %add403.i, i32 noundef 3264) #13
  %cf_acls.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 4
  %238 = ptrtoint ptr %cf_acls.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call404.i, ptr %cf_acls.i, align 4
  %tobool406.not.i = icmp eq ptr %call404.i, null
  br i1 %tobool406.not.i, label %if.then396.i.if.end410.i_crit_edge, label %if.then407.i

if.then396.i.if.end410.i_crit_edge:               ; preds = %if.then396.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end410.i

if.then407.i:                                     ; preds = %if.then396.i
  call void @__sanitizer_cov_trace_pc() #15
  %a_entries.i = getelementptr inbounds %struct.posix_acl, ptr %call404.i, i32 0, i32 3
  call void @posix_state_to_acl(ptr noundef nonnull %acl_state.i, ptr noundef %a_entries.i) #13
  br label %if.end410.i

if.end410.i:                                      ; preds = %if.then407.i, %if.then396.i.if.end410.i_crit_edge, %lor.lhs.false392.i.if.end410.i_crit_edge
  %239 = ptrtoint ptr %users248.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %users248.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool413.not.i = icmp eq i32 %242, 0
  br i1 %tobool413.not.i, label %lor.lhs.false414.i, label %if.end410.i.if.then418.i_crit_edge

if.end410.i.if.then418.i_crit_edge:               ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then418.i

lor.lhs.false414.i:                               ; preds = %if.end410.i
  %groups415.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %243 = ptrtoint ptr %groups415.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %groups415.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool417.not.i = icmp eq i32 %246, 0
  br i1 %tobool417.not.i, label %lor.lhs.false414.i.if.end435.i_crit_edge, label %lor.lhs.false414.i.if.then418.i_crit_edge

lor.lhs.false414.i.if.then418.i_crit_edge:        ; preds = %lor.lhs.false414.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then418.i

lor.lhs.false414.i.if.end435.i_crit_edge:         ; preds = %lor.lhs.false414.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end435.i

if.then418.i:                                     ; preds = %lor.lhs.false414.i.if.then418.i_crit_edge, %if.end410.i.if.then418.i_crit_edge
  %mask419.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 4
  %247 = ptrtoint ptr %mask419.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 7, ptr %mask419.i, align 4
  %248 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %240, align 4
  %groups423.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %250 = ptrtoint ptr %groups423.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %groups423.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add425.i = add i32 %249, 4
  %add426.i = add i32 %add425.i, %253
  %call427.i = tail call ptr @posix_acl_alloc(i32 noundef %add426.i, i32 noundef 3264) #13
  %cf_dacls.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 5
  %254 = ptrtoint ptr %cf_dacls.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call427.i, ptr %cf_dacls.i, align 4
  %tobool429.not.i = icmp eq ptr %call427.i, null
  br i1 %tobool429.not.i, label %if.then418.i.if.end435.i_crit_edge, label %if.then430.i

if.then418.i.if.end435.i_crit_edge:               ; preds = %if.then418.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end435.i

if.then430.i:                                     ; preds = %if.then418.i
  call void @__sanitizer_cov_trace_pc() #15
  %a_entries432.i = getelementptr inbounds %struct.posix_acl, ptr %call427.i, i32 0, i32 3
  call void @posix_state_to_acl(ptr noundef nonnull %default_acl_state.i, ptr noundef %a_entries432.i) #13
  br label %if.end435.i

if.end435.i:                                      ; preds = %if.then430.i, %if.then418.i.if.end435.i_crit_edge, %lor.lhs.false414.i.if.end435.i_crit_edge
  %255 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %users.i, align 4
  tail call void @kfree(ptr noundef %256) #13
  %groups.i714.i = getelementptr inbounds %struct.posix_acl_state, ptr %acl_state.i, i32 0, i32 6
  %257 = ptrtoint ptr %groups.i714.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %groups.i714.i, align 4
  tail call void @kfree(ptr noundef %258) #13
  %259 = ptrtoint ptr %users248.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %users248.i, align 4
  tail call void @kfree(ptr noundef %260) #13
  %groups.i716.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %261 = ptrtoint ptr %groups.i716.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %groups.i716.i, align 4
  tail call void @kfree(ptr noundef %262) #13
  br label %parse_dacl.exit

parse_dacl.exit:                                  ; preds = %if.end435.i, %if.then40.i, %if.then5.i608.i, %if.end33.i.parse_dacl.exit_crit_edge, %if.end7.i.i.parse_dacl.exit_crit_edge, %do.end20.i.parse_dacl.exit_crit_edge, %do.end.i173, %if.then96.parse_dacl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %default_acl_state.i) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %acl_state.i) #13
  br label %cleanup

cleanup:                                          ; preds = %parse_dacl.exit, %if.end94.cleanup_crit_edge, %do.end65, %do.end43, %do.end27, %do.body21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end43 ], [ -22, %do.end65 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end27 ], [ 0, %do.body21.cleanup_crit_edge ], [ 0, %parse_dacl.exit ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sid_to_id(ptr noundef %user_ns, ptr nocapture noundef readonly %psid, i32 noundef %sidtype, ptr nocapture noundef writeonly %fattr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subauth = getelementptr inbounds %struct.smb_sid, ptr %psid, i32 0, i32 1
  %0 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_subauth, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  br i1 %cmp, label %do.end, label %if.end, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sidtype)
  %cmp5 = icmp eq i32 %sidtype, 1
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 3, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cmp.i.i.i = icmp eq ptr %user_ns, @init_user_ns
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  br i1 %cmp.i.i.i, label %if.then7.mapped_kuid_user.exit_crit_edge, label %if.end.i

if.then7.mapped_kuid_user.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapped_kuid_user.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %.fca.0.insert35 = insertvalue [1 x i32] poison, i32 %4, 0
  %call2.i = tail call i32 @from_kuid(ptr noundef %user_ns, [1 x i32] %.fca.0.insert35) #13
  br label %mapped_kuid_user.exit

mapped_kuid_user.exit:                            ; preds = %if.end.i, %if.then7.mapped_kuid_user.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ %call2.i, %if.end.i ], [ %4, %if.then7.mapped_kuid_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i)
  %cmp.i.not = icmp eq i32 %retval.sroa.0.0.i, -1
  br i1 %cmp.i.not, label %mapped_kuid_user.exit.cleanup_crit_edge, label %if.then15

mapped_kuid_user.exit.cleanup_crit_edge:          ; preds = %mapped_kuid_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %mapped_kuid_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.sroa.0.0.i, ptr %fattr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp.i.i.i, label %if.else.mapped_kgid_user.exit_crit_edge, label %if.end.i47

if.else.mapped_kgid_user.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %mapped_kgid_user.exit

if.end.i47:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %4, 0
  %call2.i46 = tail call i32 @from_kgid(ptr noundef %user_ns, [1 x i32] %.fca.0.insert) #13
  br label %mapped_kgid_user.exit

mapped_kgid_user.exit:                            ; preds = %if.end.i47, %if.else.mapped_kgid_user.exit_crit_edge
  %retval.sroa.0.0.i48 = phi i32 [ %call2.i46, %if.end.i47 ], [ %4, %if.else.mapped_kgid_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i48)
  %cmp.i49.not = icmp eq i32 %retval.sroa.0.0.i48, -1
  br i1 %cmp.i49.not, label %mapped_kgid_user.exit.cleanup_crit_edge, label %if.then31

mapped_kgid_user.exit.cleanup_crit_edge:          ; preds = %mapped_kgid_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %mapped_kgid_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cf_gid = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 1
  %6 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.sroa.0.0.i48, ptr %cf_gid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %mapped_kgid_user.exit.cleanup_crit_edge, %if.then15, %mapped_kuid_user.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then15 ], [ -22, %mapped_kuid_user.exit.cleanup_crit_edge ], [ 0, %if.then31 ], [ -22, %mapped_kgid_user.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_sec_desc(ptr noundef %user_ns, ptr nocapture noundef %pntsd, ptr noundef readonly %ppntsd, i32 noundef %addition_info, ptr nocapture noundef writeonly %secdesclen, ptr nocapture noundef readonly %fattr) local_unnamed_addr #5 align 64 {
entry:
  %num_aces1.i = alloca i32, align 4
  %size.i144 = alloca i16, align 2
  %num_aces.i = alloca i32, align 4
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 68) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %fattr, align 4
  %2 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 5, i32 1
  tail call void @id_to_sid(i32 noundef %call1, i32 noundef %spec.select, ptr noundef nonnull %call7.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 68) #18
  %tobool6.not = icmp eq ptr %call7.i113, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cf_gid = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 1
  %4 = ptrtoint ptr %cf_gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack112 = load i32, ptr %cf_gid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack112, 0
  %call10 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #13
  %6 = ptrtoint ptr %call7.i113 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %call7.i113, align 8
  %num_subauth7.i34.i = getelementptr inbounds %struct.smb_sid, ptr %call7.i113, i32 0, i32 1
  %7 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_subauth7.i34.i, align 1
  %arrayidx11.i35.i = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 0
  %arrayidx11.5.i40.i = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 5
  %8 = call ptr @memset(ptr %arrayidx11.i35.i, i32 0, i32 5)
  %9 = ptrtoint ptr %arrayidx11.5.i40.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 22, ptr %arrayidx11.5.i40.i, align 1
  br label %for.body17.i47.i

for.body17.i47.i:                                 ; preds = %for.body17.i47.i.for.body17.i47.i_crit_edge, %if.end8
  %i.143.i41.i = phi i32 [ %inc22.i44.i, %for.body17.i47.i.for.body17.i47.i_crit_edge ], [ 0, %if.end8 ]
  %arrayidx18.i42.i = getelementptr %struct.smb_sid, ptr @sid_unix_groups, i32 0, i32 3, i32 %i.143.i41.i
  %10 = ptrtoint ptr %arrayidx18.i42.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx18.i42.i, align 1
  %arrayidx20.i43.i = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 3, i32 %i.143.i41.i
  %12 = ptrtoint ptr %arrayidx20.i43.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx20.i43.i, align 4
  %inc22.i44.i = add nuw nsw i32 %i.143.i41.i, 1
  %13 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_subauth7.i34.i, align 1
  %conv14.i45.i = zext i8 %14 to i32
  %cmp15.i46.i = icmp ult i32 %inc22.i44.i, %conv14.i45.i
  br i1 %cmp15.i46.i, label %for.body17.i47.i.for.body17.i47.i_crit_edge, label %id_to_sid.exit

for.body17.i47.i.for.body17.i47.i_crit_edge:      ; preds = %for.body17.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i47.i

id_to_sid.exit:                                   ; preds = %for.body17.i47.i
  %conv14.i45.i.le = zext i8 %14 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %call10) #13
  %arrayidx.i = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 3, i32 %conv14.i45.i.le
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.i, align 4
  %inc.i = add i8 %14, 1
  %17 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc.i, ptr %num_subauth7.i34.i, align 1
  %sacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 4
  %18 = ptrtoint ptr %sacloffset to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %sacloffset, align 1
  %19 = ptrtoint ptr %pntsd to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 256, ptr %pntsd, align 1
  %type = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 128, ptr %type, align 1
  %tobool11.not = icmp eq ptr %ppntsd, null
  br i1 %tobool11.not, label %id_to_sid.exit.if.end17_crit_edge, label %if.then12

id_to_sid.exit.if.end17_crit_edge:                ; preds = %id_to_sid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %id_to_sid.exit
  call void @__sanitizer_cov_trace_pc() #15
  %type13 = getelementptr inbounds %struct.smb_ntsd, ptr %ppntsd, i32 0, i32 1
  %21 = ptrtoint ptr %type13 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %type13, align 1
  %23 = or i16 %22, 128
  %24 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %type, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %id_to_sid.exit.if.end17_crit_edge
  %and = and i32 %addition_info, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  %osidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 2
  %25 = ptrtoint ptr %osidoffset to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 335544320, ptr %osidoffset, align 1
  %add.ptr = getelementptr i8, ptr %pntsd, i32 20
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call7.i, align 8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %add.ptr, align 1
  %num_subauth.i114 = getelementptr inbounds %struct.smb_sid, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %num_subauth.i114 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_subauth.i114, align 1
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 15) #13
  %num_subauth7.i = getelementptr i8, ptr %pntsd, i32 21
  %32 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %num_subauth7.i, align 1
  %arrayidx.i115 = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 0
  %33 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i115, align 2
  %arrayidx11.i = getelementptr i8, ptr %pntsd, i32 22
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx11.i, align 1
  %arrayidx.1.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx11.1.i = getelementptr i8, ptr %pntsd, i32 23
  %38 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx11.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.2.i, align 4
  %arrayidx11.2.i = getelementptr i8, ptr %pntsd, i32 24
  %41 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx11.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx11.3.i = getelementptr i8, ptr %pntsd, i32 25
  %44 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx11.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4.i, align 2
  %arrayidx11.4.i = getelementptr i8, ptr %pntsd, i32 26
  %47 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx11.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx11.5.i = getelementptr i8, ptr %pntsd, i32 27
  %50 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp1542.not.i = icmp eq i8 %31, 0
  br i1 %cmp1542.not.i, label %if.then19.smb_copy_sid.exit_crit_edge, label %if.then19.for.body17.i_crit_edge

if.then19.for.body17.i_crit_edge:                 ; preds = %if.then19
  br label %for.body17.i

if.then19.smb_copy_sid.exit_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_copy_sid.exit

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.then19.for.body17.i_crit_edge
  %i.143.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %if.then19.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 3, i32 %i.143.i
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.smb_sid, ptr %add.ptr, i32 0, i32 3, i32 %i.143.i
  %53 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %arrayidx20.i, align 1
  %inc22.i = add nuw nsw i32 %i.143.i, 1
  %54 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_subauth7.i, align 1
  %conv14.i = zext i8 %55 to i32
  %cmp15.i = icmp ult i32 %inc22.i, %conv14.i
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.smb_copy_sid.exit_crit_edge

for.body17.i.smb_copy_sid.exit_crit_edge:         ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_copy_sid.exit

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i

smb_copy_sid.exit:                                ; preds = %for.body17.i.smb_copy_sid.exit_crit_edge, %if.then19.smb_copy_sid.exit_crit_edge
  %conv20 = zext i8 %30 to i32
  %mul = shl nuw nsw i32 %conv20, 2
  %add21 = add nuw nsw i32 %mul, 28
  br label %if.end22

if.end22:                                         ; preds = %smb_copy_sid.exit, %if.end17.if.end22_crit_edge
  %offset.0 = phi i32 [ %add21, %smb_copy_sid.exit ], [ 20, %if.end17.if.end22_crit_edge ]
  %and23 = and i32 %addition_info, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %if.then25

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then25:                                        ; preds = %if.end22
  %56 = tail call i32 @llvm.bswap.i32(i32 %offset.0)
  %gsidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 3
  %57 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %gsidoffset, align 1
  %add.ptr26 = getelementptr i8, ptr %pntsd, i32 %offset.0
  %58 = ptrtoint ptr %call7.i113 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %call7.i113, align 8
  %60 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %add.ptr26, align 1
  %61 = tail call i8 @llvm.umin.i8(i8 %inc.i, i8 15) #13
  %num_subauth7.i117 = getelementptr inbounds %struct.smb_sid, ptr %add.ptr26, i32 0, i32 1
  %62 = ptrtoint ptr %num_subauth7.i117 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %num_subauth7.i117, align 1
  %63 = ptrtoint ptr %arrayidx11.i35.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx11.i35.i, align 2
  %arrayidx11.i119 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 0
  %65 = ptrtoint ptr %arrayidx11.i119 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx11.i119, align 1
  %arrayidx.1.i120 = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i120 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.1.i120, align 1
  %arrayidx11.1.i121 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %arrayidx11.1.i121 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx11.1.i121, align 1
  %arrayidx.2.i122 = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i122 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.2.i122, align 4
  %arrayidx11.2.i123 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %arrayidx11.2.i123 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx11.2.i123, align 1
  %arrayidx.3.i124 = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i124 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.3.i124, align 1
  %arrayidx11.3.i125 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 3
  %74 = ptrtoint ptr %arrayidx11.3.i125 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx11.3.i125, align 1
  %arrayidx.4.i126 = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %arrayidx.4.i126 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.4.i126, align 2
  %arrayidx11.4.i127 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 4
  %77 = ptrtoint ptr %arrayidx11.4.i127 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx11.4.i127, align 1
  %78 = ptrtoint ptr %arrayidx11.5.i40.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx11.5.i40.i, align 1
  %arrayidx11.5.i129 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 2, i32 5
  %80 = ptrtoint ptr %arrayidx11.5.i129 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx11.5.i129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp1542.not.i130 = icmp eq i8 %61, 0
  br i1 %cmp1542.not.i130, label %if.then25.smb_copy_sid.exit138_crit_edge, label %if.then25.for.body17.i137_crit_edge

if.then25.for.body17.i137_crit_edge:              ; preds = %if.then25
  br label %for.body17.i137

if.then25.smb_copy_sid.exit138_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_copy_sid.exit138

for.body17.i137:                                  ; preds = %for.body17.i137.for.body17.i137_crit_edge, %if.then25.for.body17.i137_crit_edge
  %i.143.i131 = phi i32 [ %inc22.i134, %for.body17.i137.for.body17.i137_crit_edge ], [ 0, %if.then25.for.body17.i137_crit_edge ]
  %arrayidx18.i132 = getelementptr %struct.smb_sid, ptr %call7.i113, i32 0, i32 3, i32 %i.143.i131
  %81 = ptrtoint ptr %arrayidx18.i132 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx18.i132, align 4
  %arrayidx20.i133 = getelementptr %struct.smb_sid, ptr %add.ptr26, i32 0, i32 3, i32 %i.143.i131
  %83 = ptrtoint ptr %arrayidx20.i133 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %arrayidx20.i133, align 1
  %inc22.i134 = add nuw nsw i32 %i.143.i131, 1
  %84 = ptrtoint ptr %num_subauth7.i117 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_subauth7.i117, align 1
  %conv14.i135 = zext i8 %85 to i32
  %cmp15.i136 = icmp ult i32 %inc22.i134, %conv14.i135
  br i1 %cmp15.i136, label %for.body17.i137.for.body17.i137_crit_edge, label %for.body17.i137.smb_copy_sid.exit138_crit_edge

for.body17.i137.smb_copy_sid.exit138_crit_edge:   ; preds = %for.body17.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_copy_sid.exit138

for.body17.i137.for.body17.i137_crit_edge:        ; preds = %for.body17.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i137

smb_copy_sid.exit138:                             ; preds = %for.body17.i137.smb_copy_sid.exit138_crit_edge, %if.then25.smb_copy_sid.exit138_crit_edge
  %conv28 = zext i8 %inc.i to i32
  %mul29 = shl nuw nsw i32 %conv28, 2
  %add30 = add nuw nsw i32 %mul29, 8
  %add31 = add nsw i32 %add30, %offset.0
  br label %if.end32

if.end32:                                         ; preds = %smb_copy_sid.exit138, %if.end22.if.end32_crit_edge
  %offset.1 = phi i32 [ %add31, %smb_copy_sid.exit138 ], [ %offset.0, %if.end22.if.end32_crit_edge ]
  %and33 = and i32 %addition_info, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.out_crit_edge, label %if.then35

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then35:                                        ; preds = %if.end32
  %86 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %type, align 1
  %88 = or i16 %87, 1024
  store i16 %88, ptr %type, align 1
  %add.ptr40 = getelementptr i8, ptr %pntsd, i32 %offset.1
  %89 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 512, ptr %add.ptr40, align 1
  %size = getelementptr inbounds %struct.smb_acl, ptr %add.ptr40, i32 0, i32 1
  %90 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 2048, ptr %size, align 1
  %num_aces = getelementptr inbounds %struct.smb_acl, ptr %add.ptr40, i32 0, i32 2
  %91 = ptrtoint ptr %num_aces to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 0, ptr %num_aces, align 1
  br i1 %tobool11.not, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_aces.i) #13
  %92 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %num_aces.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #13
  %93 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %size.i, align 2
  %add.ptr.i = getelementptr i8, ptr %add.ptr40, i32 8
  %cf_acls.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 4
  %94 = ptrtoint ptr %cf_acls.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cf_acls.i, align 4
  %tobool.not.i = icmp eq ptr %95, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @set_posix_acl_entries_dacl(ptr noundef %user_ns, ptr noundef %add.ptr.i, ptr noundef %fattr, ptr noundef nonnull %num_aces.i, ptr noundef nonnull %size.i, i32 noundef 0) #13
  br label %set_mode_dacl.exit

if.end.i:                                         ; preds = %if.then43
  %96 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %96)
  %.unpack.i = load i32, ptr %fattr, align 4
  %97 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %97) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  %sid_unix_users..i = select i1 %tobool1.not.i, ptr @sid_unix_users, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11)
  %cf_mode.i = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 2
  %98 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cf_mode.i, align 4
  %call4.i = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr.i, ptr noundef %sid_unix_users..i, i32 noundef 0, i16 noundef zeroext %99, i16 noundef zeroext 448) #13
  %100 = tail call i32 @llvm.bswap.i32(i32 %call.i) #13
  %sub_auth.i = getelementptr i8, ptr %add.ptr40, i32 24
  %num_subauth.i139 = getelementptr i8, ptr %add.ptr40, i32 17
  %101 = ptrtoint ptr %num_subauth.i139 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_subauth.i139, align 1
  %inc.i140 = add i8 %102, 1
  store i8 %inc.i140, ptr %num_subauth.i139, align 1
  %idxprom.i141 = zext i8 %102 to i32
  %arrayidx.i142 = getelementptr [15 x i32], ptr %sub_auth.i, i32 0, i32 %idxprom.i141
  %103 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %100, ptr %arrayidx.i142, align 1
  %add.i = add i16 %call4.i, 4
  %104 = tail call i16 @llvm.bswap.i16(i16 %add.i) #13
  %size8.i = getelementptr i8, ptr %add.ptr40, i32 10
  %105 = ptrtoint ptr %size8.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %size8.i, align 1
  %conv14.i143 = zext i16 %add.i to i32
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %conv14.i143
  %106 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cf_mode.i, align 4
  %call17.i = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr15.i, ptr noundef nonnull @sid_unix_groups, i32 noundef 0, i16 noundef zeroext %107, i16 noundef zeroext 56) #13
  %108 = ptrtoint ptr %cf_gid to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack105.i = load i32, ptr %cf_gid, align 4
  %109 = insertvalue [1 x i32] undef, i32 %.unpack105.i, 0
  %call19.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %109) #13
  %110 = tail call i32 @llvm.bswap.i32(i32 %call19.i) #13
  %sid20.i = getelementptr inbounds %struct.smb_ace, ptr %add.ptr15.i, i32 0, i32 4
  %num_subauth23.i = getelementptr inbounds %struct.smb_sid, ptr %sid20.i, i32 0, i32 1
  %111 = ptrtoint ptr %num_subauth23.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_subauth23.i, align 1
  %inc24.i = add i8 %112, 1
  store i8 %inc24.i, ptr %num_subauth23.i, align 1
  %idxprom25.i = zext i8 %112 to i32
  %arrayidx26.i = getelementptr %struct.smb_sid, ptr %sid20.i, i32 0, i32 3, i32 %idxprom25.i
  %113 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %110, ptr %arrayidx26.i, align 1
  %add28.i = add i16 %call17.i, 4
  %114 = tail call i16 @llvm.bswap.i16(i16 %add28.i) #13
  %size30.i = getelementptr inbounds %struct.smb_ace, ptr %add.ptr15.i, i32 0, i32 2
  %115 = ptrtoint ptr %size30.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %size30.i, align 1
  %add34.i = add i16 %add28.i, %add.i
  %116 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %add34.i, ptr %size.i, align 2
  %117 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3, ptr %num_aces.i, align 4
  %118 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cf_mode.i, align 4
  %120 = and i16 %119, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %120)
  %cmp.i = icmp eq i16 %120, 16384
  br i1 %cmp.i, label %if.then41.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv42.i = zext i16 %add34.i to i32
  %add.ptr43.i = getelementptr i8, ptr %add.ptr.i, i32 %conv42.i
  %call45.i = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr43.i, ptr noundef nonnull @creator_owner, i32 noundef 11, i16 noundef zeroext %119, i16 noundef zeroext 448) #13
  %add48.i = add i16 %call45.i, %add34.i
  %conv50.i = zext i16 %add48.i to i32
  %add.ptr51.i = getelementptr i8, ptr %add.ptr.i, i32 %conv50.i
  %121 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %cf_mode.i, align 4
  %call53.i = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr51.i, ptr noundef nonnull @creator_group, i32 noundef 11, i16 noundef zeroext %122, i16 noundef zeroext 56) #13
  %add56.i = add i16 %call53.i, %add48.i
  %123 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %add56.i, ptr %size.i, align 2
  %124 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 5, ptr %num_aces.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then41.i, %if.end.i.if.end60.i_crit_edge
  %conv58.pn.in.i = phi i16 [ %add56.i, %if.then41.i ], [ %add34.i, %if.end.i.if.end60.i_crit_edge ]
  %conv58.pn.i = zext i16 %conv58.pn.in.i to i32
  %pace.0.i = getelementptr i8, ptr %add.ptr.i, i32 %conv58.pn.i
  %125 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %cf_mode.i, align 4
  %call62.i = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %pace.0.i, ptr noundef nonnull @sid_everyone, i32 noundef 0, i16 noundef zeroext %126, i16 noundef zeroext 7) #13
  %127 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %size.i, align 2
  %add65.i = add i16 %128, %call62.i
  store i16 %add65.i, ptr %size.i, align 2
  br label %set_mode_dacl.exit

set_mode_dacl.exit:                               ; preds = %if.end60.i, %if.then.i
  %129 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_aces.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  %132 = ptrtoint ptr %num_aces to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %131, ptr %num_aces, align 1
  %133 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %size, align 1
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #13
  %136 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %size.i, align 2
  %add71.i = add i16 %135, %137
  %138 = tail call i16 @llvm.bswap.i16(i16 %add71.i) #13
  %139 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_aces.i) #13
  br label %if.end50

if.else:                                          ; preds = %if.then35
  %dacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %ppntsd, i32 0, i32 5
  %140 = ptrtoint ptr %dacloffset to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %dacloffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool44.not = icmp eq i32 %141, 0
  br i1 %tobool44.not, label %if.else.out_crit_edge, label %if.else46

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else46:                                        ; preds = %if.else
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %add.ptr48 = getelementptr i8, ptr %ppntsd, i32 %142
  %num_aces.i145 = getelementptr inbounds %struct.smb_acl, ptr %add.ptr48, i32 0, i32 2
  %143 = ptrtoint ptr %num_aces.i145 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %num_aces.i145, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_aces1.i) #13
  %146 = ptrtoint ptr %num_aces1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %num_aces1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i144) #13
  %147 = ptrtoint ptr %size.i144 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %size.i144, align 2
  %add.ptr.i146 = getelementptr i8, ptr %add.ptr40, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i147 = icmp eq i32 %144, 0
  br i1 %tobool.not.i147, label %if.else46.set_ntacl_dacl.exit_crit_edge, label %if.then.i148

if.else46.set_ntacl_dacl.exit_crit_edge:          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_ntacl_dacl.exit

if.then.i148:                                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp3.i = icmp sgt i32 %145, 0
  br i1 %cmp3.i, label %for.body.preheader.i, label %if.then.i148.if.end.loopexit.i_crit_edge

if.then.i148.if.end.loopexit.i_crit_edge:         ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.loopexit.i

for.body.preheader.i:                             ; preds = %if.then.i148
  %add.ptr2.i = getelementptr i8, ptr %add.ptr48, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.07.i = phi i32 [ %inc13.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ntace.06.i = phi ptr [ %add.ptr12.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr2.i, %for.body.preheader.i ]
  %add15.i = phi i16 [ %add.i149, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %conv.i = zext i16 %add15.i to i32
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i146, i32 %conv.i
  %size4.i = getelementptr inbounds %struct.smb_ace, ptr %ntace.06.i, i32 0, i32 2
  %148 = ptrtoint ptr %size4.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %size4.i, align 1
  %150 = tail call i16 @llvm.bswap.i16(i16 %149) #13
  %conv5.i = zext i16 %150 to i32
  %151 = call ptr @memcpy(ptr %add.ptr3.i, ptr %ntace.06.i, i32 %conv5.i)
  %152 = ptrtoint ptr %size4.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %size4.i, align 1
  %154 = tail call i16 @llvm.bswap.i16(i16 %153) #13
  %add.i149 = add i16 %154, %add15.i
  %conv11.i = zext i16 %154 to i32
  %add.ptr12.i = getelementptr i8, ptr %ntace.06.i, i32 %conv11.i
  %inc13.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %145
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %if.then.i148.if.end.loopexit.i_crit_edge
  %inc2.lcssa.i = phi i32 [ 0, %if.then.i148.if.end.loopexit.i_crit_edge ], [ %145, %for.body.i.if.end.loopexit.i_crit_edge ]
  %add1.lcssa.i = phi i16 [ 0, %if.then.i148.if.end.loopexit.i_crit_edge ], [ %add.i149, %for.body.i.if.end.loopexit.i_crit_edge ]
  %155 = ptrtoint ptr %size.i144 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %add1.lcssa.i, ptr %size.i144, align 2
  %156 = ptrtoint ptr %num_aces1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %inc2.lcssa.i, ptr %num_aces1.i, align 4
  br label %set_ntacl_dacl.exit

set_ntacl_dacl.exit:                              ; preds = %if.end.loopexit.i, %if.else46.set_ntacl_dacl.exit_crit_edge
  call fastcc void @set_posix_acl_entries_dacl(ptr noundef %user_ns, ptr noundef %add.ptr.i146, ptr noundef %fattr, ptr noundef nonnull %num_aces1.i, ptr noundef nonnull %size.i144, i32 noundef %145) #13
  %157 = ptrtoint ptr %num_aces1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_aces1.i, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #13
  %160 = ptrtoint ptr %num_aces to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %159, ptr %num_aces, align 1
  %161 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %size, align 1
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #13
  %164 = ptrtoint ptr %size.i144 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %size.i144, align 2
  %add18.i = add i16 %163, %165
  %166 = tail call i16 @llvm.bswap.i16(i16 %add18.i) #13
  %167 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 %166, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i144) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_aces1.i) #13
  br label %if.end50

if.end50:                                         ; preds = %set_ntacl_dacl.exit, %set_mode_dacl.exit
  %168 = tail call i32 @llvm.bswap.i32(i32 %offset.1)
  %dacloffset51 = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 5
  %169 = ptrtoint ptr %dacloffset51 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %dacloffset51, align 1
  %170 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %size, align 1
  %172 = tail call i16 @llvm.bswap.i16(i16 %171)
  %conv53 = zext i16 %172 to i32
  %add54 = add nsw i32 %offset.1, %conv53
  br label %out

out:                                              ; preds = %if.end50, %if.else.out_crit_edge, %if.end32.out_crit_edge
  %offset.2 = phi i32 [ %add54, %if.end50 ], [ %offset.1, %if.else.out_crit_edge ], [ %offset.1, %if.end32.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i113) #13
  %173 = ptrtoint ptr %secdesclen to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %offset.2, ptr %secdesclen, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -12, %if.then7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_inherit_dacl(ptr noundef %conn, ptr nocapture noundef readonly %path, i32 noundef %uid, i32 noundef %gid) local_unnamed_addr #5 align 64 {
entry:
  %parent_pntsd = alloca ptr, align 4
  %owner_sid = alloca %struct.smb_sid, align 1
  %group_sid = alloca %struct.smb_sid, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_pntsd) #13
  %0 = ptrtoint ptr %parent_pntsd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %parent_pntsd, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %owner_sid) #13
  %1 = call ptr @memset(ptr %owner_sid, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %group_sid) #13
  %2 = call ptr @memset(ptr %group_sid, i32 255, i32 68)
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_parent, align 8
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp = icmp eq i16 %17, 16384
  %call4 = call i32 @ksmbd_vfs_get_sd_xattr(ptr noundef %conn, ptr noundef %10, ptr noundef %6, ptr noundef nonnull %parent_pntsd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %entry.cleanup179_crit_edge, label %if.end

entry.cleanup179_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup179

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %parent_pntsd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_pntsd, align 4
  %dacloffset7 = getelementptr inbounds %struct.smb_ntsd, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dacloffset7 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dacloffset7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.free_parent_pntsd_crit_edge, label %if.end9

if.end.free_parent_pntsd_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_parent_pntsd

if.end9:                                          ; preds = %if.end
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %add.ptr = getelementptr i8, ptr %19, i32 %22
  %num_aces10 = getelementptr inbounds %struct.smb_acl, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %num_aces10 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %num_aces10, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %type = getelementptr inbounds %struct.smb_ntsd, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %type, align 1
  %mul12 = mul i32 %25, 152
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul12, i32 noundef 3264) #16
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %if.end9.free_parent_pntsd_crit_edge, label %if.end16

if.end9.free_parent_pntsd_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_parent_pntsd

if.end16:                                         ; preds = %if.end9
  %28 = shl i16 %27, 2
  %29 = and i16 %28, 16
  %30 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22363 = icmp sgt i32 %25, 0
  br i1 %cmp22363, label %for.body.lr.ph, label %if.end16.free_aces_base_crit_edge

if.end16.free_aces_base_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_aces_base

for.body.lr.ph:                                   ; preds = %if.end16
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 8
  %num_subauth7.i34.i = getelementptr inbounds %struct.smb_sid, ptr %group_sid, i32 0, i32 1
  %arrayidx11.i35.i = getelementptr inbounds %struct.smb_sid, ptr %group_sid, i32 0, i32 2, i32 0
  %arrayidx11.5.i40.i = getelementptr inbounds %struct.smb_sid, ptr %group_sid, i32 0, i32 2, i32 5
  %31 = call i32 @llvm.bswap.i32(i32 %gid) #13
  %num_subauth7.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 1
  %arrayidx11.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 0
  %arrayidx11.1.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 1
  %arrayidx11.2.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 2
  %arrayidx11.3.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 3
  %arrayidx11.4.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 4
  %arrayidx11.5.i.i = getelementptr inbounds %struct.smb_sid, ptr %owner_sid, i32 0, i32 2, i32 5
  %32 = call i32 @llvm.bswap.i32(i32 %uid) #13
  %cmp.not = xor i1 %cmp, true
  %conv62 = trunc i16 %29 to i8
  br label %for.body

for.body:                                         ; preds = %pass.for.body_crit_edge, %for.body.lr.ph
  %parent_aces.0372 = phi ptr [ %add.ptr17, %for.body.lr.ph ], [ %add.ptr93, %pass.for.body_crit_edge ]
  %nt_size.0370 = phi i32 [ 0, %for.body.lr.ph ], [ %nt_size.2, %pass.for.body_crit_edge ]
  %ace_cnt.0368 = phi i32 [ 0, %for.body.lr.ph ], [ %ace_cnt.2, %pass.for.body_crit_edge ]
  %i.0367 = phi i32 [ 0, %for.body.lr.ph ], [ %inc94, %pass.for.body_crit_edge ]
  %aces.0364 = phi ptr [ %call9.i, %for.body.lr.ph ], [ %aces.2, %pass.for.body_crit_edge ]
  %flags24 = getelementptr inbounds %struct.smb_ace, ptr %parent_aces.0372, i32 0, i32 1
  %33 = ptrtoint ptr %flags24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags24, align 1
  %conv25 = zext i8 %34 to i32
  br i1 %cmp, label %if.end.i291, label %if.then.i290

if.then.i290:                                     ; preds = %for.body
  %and.i = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i289.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i289.not, label %if.then.i290.pass_crit_edge, label %if.then.i290.if.end41_crit_edge

if.then.i290.if.end41_crit_edge:                  ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then.i290.pass_crit_edge:                      ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #15
  br label %pass

if.end.i291:                                      ; preds = %for.body
  %35 = and i32 %conv25, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %36 = icmp eq i32 %35, 1
  %and7.i = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp ne i32 %and7.i, 0
  %or.cond361 = or i1 %36, %tobool8.not.i
  br i1 %or.cond361, label %if.then31, label %if.end.i291.pass_crit_edge

if.end.i291.pass_crit_edge:                       ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %pass

if.then31:                                        ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #15
  %and32 = and i32 %conv25, 231
  %and33 = shl nuw nsw i32 %conv25, 2
  %37 = and i32 %and33, 8
  %38 = or i32 %37, %and32
  %39 = xor i32 %38, 8
  %and37 = and i32 %conv25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.store.select = select i1 %tobool38.not, i32 %39, i32 0
  br label %if.end41

if.end41:                                         ; preds = %if.then31, %if.then.i290.if.end41_crit_edge
  %flags.1 = phi i32 [ %spec.store.select, %if.then31 ], [ 0, %if.then.i290.if.end41_crit_edge ]
  %sid = getelementptr inbounds %struct.smb_ace, ptr %parent_aces.0372, i32 0, i32 4
  %call42 = call i32 @compare_sids(ptr noundef nonnull @creator_owner, ptr noundef %sid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end41
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11) to i32))
  %40 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11), align 4
  %41 = ptrtoint ptr %owner_sid to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %owner_sid, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 1) to i32))
  %42 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 1), align 1
  %43 = call i8 @llvm.umin.i8(i8 %42, i8 15) #13
  %44 = ptrtoint ptr %num_subauth7.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_subauth7.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 0) to i32))
  %45 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 0), align 2
  %46 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx11.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 1) to i32))
  %47 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 1), align 1
  %48 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx11.1.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 2) to i32))
  %49 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 2), align 4
  %50 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx11.2.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 3) to i32))
  %51 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 3), align 1
  %52 = ptrtoint ptr %arrayidx11.3.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx11.3.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 4) to i32))
  %53 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 4), align 2
  %54 = ptrtoint ptr %arrayidx11.4.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx11.4.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 5) to i32))
  %55 = load i8, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 2, i32 5), align 1
  %56 = ptrtoint ptr %arrayidx11.5.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx11.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp1542.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp1542.not.i.i, label %if.then44.id_to_sid.exit_crit_edge, label %if.then44.for.body17.i.i_crit_edge

if.then44.for.body17.i.i_crit_edge:               ; preds = %if.then44
  br label %for.body17.i.i

if.then44.id_to_sid.exit_crit_edge:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %id_to_sid.exit

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %if.then44.for.body17.i.i_crit_edge
  %i.143.i.i = phi i32 [ %inc22.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ], [ 0, %if.then44.for.body17.i.i_crit_edge ]
  %arrayidx18.i.i = getelementptr %struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 %i.143.i.i
  %57 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx18.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.smb_sid, ptr %owner_sid, i32 0, i32 3, i32 %i.143.i.i
  %59 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %arrayidx20.i.i, align 1
  %inc22.i.i = add nuw nsw i32 %i.143.i.i, 1
  %60 = ptrtoint ptr %num_subauth7.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_subauth7.i.i, align 1
  %conv14.i.i = zext i8 %61 to i32
  %cmp15.i.i = icmp ult i32 %inc22.i.i, %conv14.i.i
  br i1 %cmp15.i.i, label %for.body17.i.i.for.body17.i.i_crit_edge, label %for.body17.i.i.id_to_sid.exit_crit_edge

for.body17.i.i.id_to_sid.exit_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %id_to_sid.exit

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i

id_to_sid.exit:                                   ; preds = %for.body17.i.i.id_to_sid.exit_crit_edge, %if.then44.id_to_sid.exit_crit_edge
  %62 = ptrtoint ptr %num_subauth7.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_subauth7.i.i, align 1
  br label %if.end53

if.else45:                                        ; preds = %if.end41
  %call47 = call i32 @compare_sids(ptr noundef nonnull @creator_group, ptr noundef %sid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.else45.if.else68_crit_edge

if.else45.if.else68_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else68

if.then49:                                        ; preds = %if.else45
  %64 = ptrtoint ptr %group_sid to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %group_sid, align 1
  %65 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %num_subauth7.i34.i, align 1
  %66 = call ptr @memset(ptr %arrayidx11.i35.i, i32 0, i32 5)
  %67 = ptrtoint ptr %arrayidx11.5.i40.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 22, ptr %arrayidx11.5.i40.i, align 1
  br label %for.body17.i47.i

for.body17.i47.i:                                 ; preds = %for.body17.i47.i.for.body17.i47.i_crit_edge, %if.then49
  %i.143.i41.i = phi i32 [ %inc22.i44.i, %for.body17.i47.i.for.body17.i47.i_crit_edge ], [ 0, %if.then49 ]
  %arrayidx18.i42.i = getelementptr %struct.smb_sid, ptr @sid_unix_groups, i32 0, i32 3, i32 %i.143.i41.i
  %68 = ptrtoint ptr %arrayidx18.i42.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx18.i42.i, align 1
  %arrayidx20.i43.i = getelementptr %struct.smb_sid, ptr %group_sid, i32 0, i32 3, i32 %i.143.i41.i
  %70 = ptrtoint ptr %arrayidx20.i43.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %arrayidx20.i43.i, align 1
  %inc22.i44.i = add nuw nsw i32 %i.143.i41.i, 1
  %71 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_subauth7.i34.i, align 1
  %conv14.i45.i = zext i8 %72 to i32
  %cmp15.i46.i = icmp ult i32 %inc22.i44.i, %conv14.i45.i
  br i1 %cmp15.i46.i, label %for.body17.i47.i.for.body17.i47.i_crit_edge, label %for.body17.i47.i.if.end53_crit_edge

for.body17.i47.i.if.end53_crit_edge:              ; preds = %for.body17.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

for.body17.i47.i.for.body17.i47.i_crit_edge:      ; preds = %for.body17.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i47.i

if.end53:                                         ; preds = %for.body17.i47.i.if.end53_crit_edge, %id_to_sid.exit
  %.lcssa378.sink379 = phi i8 [ %63, %id_to_sid.exit ], [ %72, %for.body17.i47.i.if.end53_crit_edge ]
  %group_sid.sink = phi ptr [ %owner_sid, %id_to_sid.exit ], [ %group_sid, %for.body17.i47.i.if.end53_crit_edge ]
  %.sink = phi i32 [ %32, %id_to_sid.exit ], [ %31, %for.body17.i47.i.if.end53_crit_edge ]
  %num_subauth7.i34.i.sink = phi ptr [ %num_subauth7.i.i, %id_to_sid.exit ], [ %num_subauth7.i34.i, %for.body17.i47.i.if.end53_crit_edge ]
  %creator.0 = phi ptr [ @creator_owner, %id_to_sid.exit ], [ @creator_group, %for.body17.i47.i.if.end53_crit_edge ]
  %conv14.i45.i.le = zext i8 %.lcssa378.sink379 to i32
  %arrayidx.i294 = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 3, i32 %conv14.i45.i.le
  %73 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %.sink, ptr %arrayidx.i294, align 1
  %inc.i295 = add i8 %.lcssa378.sink379, 1
  %74 = ptrtoint ptr %num_subauth7.i34.i.sink to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc.i295, ptr %num_subauth7.i34.i.sink, align 1
  %and58 = and i32 %flags.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool59.not
  br i1 %or.cond, label %if.end53.if.else68_crit_edge, label %if.then60

if.end53.if.else68_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else68

if.then60:                                        ; preds = %if.end53
  %75 = ptrtoint ptr %parent_aces.0372 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %parent_aces.0372, align 1
  %access_req = getelementptr inbounds %struct.smb_ace, ptr %parent_aces.0372, i32 0, i32 3
  %77 = ptrtoint ptr %access_req to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %access_req, align 1
  %79 = ptrtoint ptr %aces.0364 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %aces.0364, align 1
  %flags2.i = getelementptr inbounds %struct.smb_ace, ptr %aces.0364, i32 0, i32 1
  %80 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv62, ptr %flags2.i, align 1
  %access_req3.i = getelementptr inbounds %struct.smb_ace, ptr %aces.0364, i32 0, i32 3
  %81 = ptrtoint ptr %access_req3.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %78, ptr %access_req3.i, align 1
  %sid4.i = getelementptr inbounds %struct.smb_ace, ptr %aces.0364, i32 0, i32 4
  %82 = ptrtoint ptr %group_sid.sink to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %group_sid.sink, align 1
  %84 = ptrtoint ptr %sid4.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %sid4.i, align 1
  %num_subauth.i.i = getelementptr inbounds %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 1
  %85 = ptrtoint ptr %num_subauth.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_subauth.i.i, align 1
  %87 = call i8 @llvm.umin.i8(i8 %86, i8 15) #13
  %num_subauth7.i.i297 = getelementptr inbounds %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %num_subauth7.i.i297 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %num_subauth7.i.i297, align 1
  %arrayidx.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 0
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx11.i.i298 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2
  %91 = ptrtoint ptr %arrayidx11.i.i298 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx11.i.i298, align 1
  %arrayidx.1.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx11.1.i.i299 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2, i32 1
  %94 = ptrtoint ptr %arrayidx11.1.i.i299 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx11.1.i.i299, align 1
  %arrayidx.2.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 2
  %95 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx11.2.i.i300 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2, i32 2
  %97 = ptrtoint ptr %arrayidx11.2.i.i300 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx11.2.i.i300, align 1
  %arrayidx.3.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx11.3.i.i301 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2, i32 3
  %100 = ptrtoint ptr %arrayidx11.3.i.i301 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx11.3.i.i301, align 1
  %arrayidx.4.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 4
  %101 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx11.4.i.i302 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2, i32 4
  %103 = ptrtoint ptr %arrayidx11.4.i.i302 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx11.4.i.i302, align 1
  %arrayidx.5.i.i = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 2, i32 5
  %104 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx11.5.i.i303 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 2, i32 5
  %106 = ptrtoint ptr %arrayidx11.5.i.i303 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx11.5.i.i303, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp1542.not.i.i304 = icmp eq i8 %87, 0
  br i1 %cmp1542.not.i.i304, label %if.then60.smb_set_ace.exit_crit_edge, label %if.then60.for.body17.i.i311_crit_edge

if.then60.for.body17.i.i311_crit_edge:            ; preds = %if.then60
  br label %for.body17.i.i311

if.then60.smb_set_ace.exit_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_set_ace.exit

for.body17.i.i311:                                ; preds = %for.body17.i.i311.for.body17.i.i311_crit_edge, %if.then60.for.body17.i.i311_crit_edge
  %i.143.i.i305 = phi i32 [ %inc22.i.i308, %for.body17.i.i311.for.body17.i.i311_crit_edge ], [ 0, %if.then60.for.body17.i.i311_crit_edge ]
  %arrayidx18.i.i306 = getelementptr %struct.smb_sid, ptr %group_sid.sink, i32 0, i32 3, i32 %i.143.i.i305
  %107 = ptrtoint ptr %arrayidx18.i.i306 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %arrayidx18.i.i306, align 1
  %arrayidx20.i.i307 = getelementptr %struct.smb_ace, ptr %aces.0364, i32 0, i32 4, i32 3, i32 %i.143.i.i305
  %109 = ptrtoint ptr %arrayidx20.i.i307 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx20.i.i307, align 1
  %inc22.i.i308 = add nuw nsw i32 %i.143.i.i305, 1
  %110 = ptrtoint ptr %num_subauth7.i.i297 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %num_subauth7.i.i297, align 1
  %conv14.i.i309 = zext i8 %111 to i32
  %cmp15.i.i310 = icmp ult i32 %inc22.i.i308, %conv14.i.i309
  br i1 %cmp15.i.i310, label %for.body17.i.i311.for.body17.i.i311_crit_edge, label %for.body17.i.i311.smb_set_ace.exit_crit_edge

for.body17.i.i311.smb_set_ace.exit_crit_edge:     ; preds = %for.body17.i.i311
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_set_ace.exit

for.body17.i.i311.for.body17.i.i311_crit_edge:    ; preds = %for.body17.i.i311
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i311

smb_set_ace.exit:                                 ; preds = %for.body17.i.i311.smb_set_ace.exit_crit_edge, %if.then60.smb_set_ace.exit_crit_edge
  %112 = ptrtoint ptr %num_subauth.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %num_subauth.i.i, align 1
  %conv.i = zext i8 %113 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 2
  %add.i = add nuw nsw i16 %mul.i, 16
  %114 = call i16 @llvm.bswap.i16(i16 %add.i) #13
  %size.i = getelementptr inbounds %struct.smb_ace, ptr %aces.0364, i32 0, i32 2
  %115 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %size.i, align 1
  %conv63 = zext i16 %add.i to i32
  %add = add i32 %nt_size.0370, %conv63
  %inc = add i32 %ace_cnt.0368, 1
  %add.ptr66 = getelementptr i8, ptr %aces.0364, i32 %conv63
  %or67 = or i32 %flags.1, 8
  br label %if.end79

if.else68:                                        ; preds = %if.end53.if.else68_crit_edge, %if.else45.if.else68_crit_edge
  %psid.0360 = phi ptr [ %group_sid.sink, %if.end53.if.else68_crit_edge ], [ %sid, %if.else45.if.else68_crit_edge ]
  br i1 %cmp, label %land.lhs.true71, label %if.else68.if.end79_crit_edge

if.else68.if.end79_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true71:                                  ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %flags24 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %flags24, align 1
  %118 = and i8 %117, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool75.not = icmp eq i8 %118, 0
  %spec.select287 = select i1 %tobool75.not, ptr %sid, ptr %psid.0360
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true71, %if.else68.if.end79_crit_edge, %smb_set_ace.exit
  %aces.1 = phi ptr [ %add.ptr66, %smb_set_ace.exit ], [ %aces.0364, %if.else68.if.end79_crit_edge ], [ %aces.0364, %land.lhs.true71 ]
  %flags.2 = phi i32 [ %or67, %smb_set_ace.exit ], [ %flags.1, %if.else68.if.end79_crit_edge ], [ %flags.1, %land.lhs.true71 ]
  %ace_cnt.1 = phi i32 [ %inc, %smb_set_ace.exit ], [ %ace_cnt.0368, %if.else68.if.end79_crit_edge ], [ %ace_cnt.0368, %land.lhs.true71 ]
  %nt_size.1 = phi i32 [ %add, %smb_set_ace.exit ], [ %nt_size.0370, %if.else68.if.end79_crit_edge ], [ %nt_size.0370, %land.lhs.true71 ]
  %psid.1 = phi ptr [ %creator.0, %smb_set_ace.exit ], [ %psid.0360, %if.else68.if.end79_crit_edge ], [ %spec.select287, %land.lhs.true71 ]
  %119 = ptrtoint ptr %parent_aces.0372 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %parent_aces.0372, align 1
  %or81 = or i32 %flags.2, %30
  %conv82 = trunc i32 %or81 to i8
  %access_req83 = getelementptr inbounds %struct.smb_ace, ptr %parent_aces.0372, i32 0, i32 3
  %121 = ptrtoint ptr %access_req83 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %access_req83, align 1
  %123 = ptrtoint ptr %aces.1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %120, ptr %aces.1, align 1
  %flags2.i312 = getelementptr inbounds %struct.smb_ace, ptr %aces.1, i32 0, i32 1
  %124 = ptrtoint ptr %flags2.i312 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv82, ptr %flags2.i312, align 1
  %access_req3.i313 = getelementptr inbounds %struct.smb_ace, ptr %aces.1, i32 0, i32 3
  %125 = ptrtoint ptr %access_req3.i313 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %122, ptr %access_req3.i313, align 1
  %sid4.i314 = getelementptr inbounds %struct.smb_ace, ptr %aces.1, i32 0, i32 4
  %126 = ptrtoint ptr %psid.1 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %psid.1, align 1
  %128 = ptrtoint ptr %sid4.i314 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %sid4.i314, align 1
  %num_subauth.i.i315 = getelementptr inbounds %struct.smb_sid, ptr %psid.1, i32 0, i32 1
  %129 = ptrtoint ptr %num_subauth.i.i315 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %num_subauth.i.i315, align 1
  %131 = call i8 @llvm.umin.i8(i8 %130, i8 15) #13
  %num_subauth7.i.i316 = getelementptr inbounds %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 1
  %132 = ptrtoint ptr %num_subauth7.i.i316 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %num_subauth7.i.i316, align 1
  %arrayidx.i.i317 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 0
  %133 = ptrtoint ptr %arrayidx.i.i317 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.i317, align 1
  %arrayidx11.i.i318 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2
  %135 = ptrtoint ptr %arrayidx11.i.i318 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx11.i.i318, align 1
  %arrayidx.1.i.i319 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %arrayidx.1.i.i319 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.1.i.i319, align 1
  %arrayidx11.1.i.i320 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2, i32 1
  %138 = ptrtoint ptr %arrayidx11.1.i.i320 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx11.1.i.i320, align 1
  %arrayidx.2.i.i321 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 2
  %139 = ptrtoint ptr %arrayidx.2.i.i321 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.2.i.i321, align 1
  %arrayidx11.2.i.i322 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2, i32 2
  %141 = ptrtoint ptr %arrayidx11.2.i.i322 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx11.2.i.i322, align 1
  %arrayidx.3.i.i323 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 3
  %142 = ptrtoint ptr %arrayidx.3.i.i323 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.3.i.i323, align 1
  %arrayidx11.3.i.i324 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2, i32 3
  %144 = ptrtoint ptr %arrayidx11.3.i.i324 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx11.3.i.i324, align 1
  %arrayidx.4.i.i325 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 4
  %145 = ptrtoint ptr %arrayidx.4.i.i325 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.4.i.i325, align 1
  %arrayidx11.4.i.i326 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2, i32 4
  %147 = ptrtoint ptr %arrayidx11.4.i.i326 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx11.4.i.i326, align 1
  %arrayidx.5.i.i327 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 2, i32 5
  %148 = ptrtoint ptr %arrayidx.5.i.i327 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.5.i.i327, align 1
  %arrayidx11.5.i.i328 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 2, i32 5
  %150 = ptrtoint ptr %arrayidx11.5.i.i328 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx11.5.i.i328, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp1542.not.i.i329 = icmp eq i8 %131, 0
  br i1 %cmp1542.not.i.i329, label %if.end79.smb_set_ace.exit341_crit_edge, label %if.end79.for.body17.i.i336_crit_edge

if.end79.for.body17.i.i336_crit_edge:             ; preds = %if.end79
  br label %for.body17.i.i336

if.end79.smb_set_ace.exit341_crit_edge:           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_set_ace.exit341

for.body17.i.i336:                                ; preds = %for.body17.i.i336.for.body17.i.i336_crit_edge, %if.end79.for.body17.i.i336_crit_edge
  %i.143.i.i330 = phi i32 [ %inc22.i.i333, %for.body17.i.i336.for.body17.i.i336_crit_edge ], [ 0, %if.end79.for.body17.i.i336_crit_edge ]
  %arrayidx18.i.i331 = getelementptr %struct.smb_sid, ptr %psid.1, i32 0, i32 3, i32 %i.143.i.i330
  %151 = ptrtoint ptr %arrayidx18.i.i331 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %arrayidx18.i.i331, align 1
  %arrayidx20.i.i332 = getelementptr %struct.smb_ace, ptr %aces.1, i32 0, i32 4, i32 3, i32 %i.143.i.i330
  %153 = ptrtoint ptr %arrayidx20.i.i332 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %arrayidx20.i.i332, align 1
  %inc22.i.i333 = add nuw nsw i32 %i.143.i.i330, 1
  %154 = ptrtoint ptr %num_subauth7.i.i316 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %num_subauth7.i.i316, align 1
  %conv14.i.i334 = zext i8 %155 to i32
  %cmp15.i.i335 = icmp ult i32 %inc22.i.i333, %conv14.i.i334
  br i1 %cmp15.i.i335, label %for.body17.i.i336.for.body17.i.i336_crit_edge, label %for.body17.i.i336.smb_set_ace.exit341_crit_edge

for.body17.i.i336.smb_set_ace.exit341_crit_edge:  ; preds = %for.body17.i.i336
  call void @__sanitizer_cov_trace_pc() #15
  br label %smb_set_ace.exit341

for.body17.i.i336.for.body17.i.i336_crit_edge:    ; preds = %for.body17.i.i336
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i336

smb_set_ace.exit341:                              ; preds = %for.body17.i.i336.smb_set_ace.exit341_crit_edge, %if.end79.smb_set_ace.exit341_crit_edge
  %156 = ptrtoint ptr %num_subauth.i.i315 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %num_subauth.i.i315, align 1
  %conv.i337 = zext i8 %157 to i16
  %mul.i338 = shl nuw nsw i16 %conv.i337, 2
  %add.i339 = add nuw nsw i16 %mul.i338, 16
  %158 = call i16 @llvm.bswap.i16(i16 %add.i339) #13
  %size.i340 = getelementptr inbounds %struct.smb_ace, ptr %aces.1, i32 0, i32 2
  %159 = ptrtoint ptr %size.i340 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %size.i340, align 1
  %conv85 = zext i16 %add.i339 to i32
  %add86 = add i32 %nt_size.1, %conv85
  %add.ptr89 = getelementptr i8, ptr %aces.1, i32 %conv85
  %inc90 = add i32 %ace_cnt.1, 1
  br label %pass

pass:                                             ; preds = %smb_set_ace.exit341, %if.end.i291.pass_crit_edge, %if.then.i290.pass_crit_edge
  %aces.2 = phi ptr [ %add.ptr89, %smb_set_ace.exit341 ], [ %aces.0364, %if.then.i290.pass_crit_edge ], [ %aces.0364, %if.end.i291.pass_crit_edge ]
  %ace_cnt.2 = phi i32 [ %inc90, %smb_set_ace.exit341 ], [ %ace_cnt.0368, %if.then.i290.pass_crit_edge ], [ %ace_cnt.0368, %if.end.i291.pass_crit_edge ]
  %nt_size.2 = phi i32 [ %add86, %smb_set_ace.exit341 ], [ %nt_size.0370, %if.then.i290.pass_crit_edge ], [ %nt_size.0370, %if.end.i291.pass_crit_edge ]
  %size91 = getelementptr inbounds %struct.smb_ace, ptr %parent_aces.0372, i32 0, i32 2
  %160 = ptrtoint ptr %size91 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %size91, align 1
  %162 = call i16 @llvm.bswap.i16(i16 %161)
  %conv92 = zext i16 %162 to i32
  %add.ptr93 = getelementptr i8, ptr %parent_aces.0372, i32 %conv92
  %inc94 = add nuw nsw i32 %i.0367, 1
  %exitcond.not = icmp eq i32 %inc94, %25
  br i1 %exitcond.not, label %for.end, label %pass.for.body_crit_edge

pass.for.body_crit_edge:                          ; preds = %pass
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %pass
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nt_size.2)
  %cmp95 = icmp sgt i32 %nt_size.2, 0
  br i1 %cmp95, label %if.then97, label %for.end.free_aces_base_crit_edge

for.end.free_aces_base_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_aces_base

if.then97:                                        ; preds = %for.end
  %163 = ptrtoint ptr %parent_pntsd to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %parent_pntsd, align 4
  %osidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %osidoffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool98.not = icmp eq i32 %166, 0
  br i1 %tobool98.not, label %if.then97.if.end105_crit_edge, label %if.then99

if.then97.if.end105_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then99:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %add.ptr101 = getelementptr i8, ptr %164, i32 %167
  %num_subauth = getelementptr inbounds %struct.smb_sid, ptr %add.ptr101, i32 0, i32 1
  %168 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %num_subauth, align 1
  %conv102 = zext i8 %169 to i32
  %mul103 = shl nuw nsw i32 %conv102, 2
  %add104 = add nuw nsw i32 %mul103, 8
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.then97.if.end105_crit_edge
  %powner_sid.0 = phi ptr [ %add.ptr101, %if.then99 ], [ null, %if.then97.if.end105_crit_edge ]
  %powner_sid_size.0 = phi i32 [ %add104, %if.then99 ], [ 0, %if.then97.if.end105_crit_edge ]
  %gsidoffset = getelementptr inbounds %struct.smb_ntsd, ptr %164, i32 0, i32 3
  %170 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %gsidoffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool106.not = icmp eq i32 %171, 0
  br i1 %tobool106.not, label %if.end105.if.end114_crit_edge, label %if.then107

if.end105.if.end114_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %172 = call i32 @llvm.bswap.i32(i32 %171)
  %add.ptr109 = getelementptr i8, ptr %164, i32 %172
  %num_subauth110 = getelementptr inbounds %struct.smb_sid, ptr %add.ptr109, i32 0, i32 1
  %173 = ptrtoint ptr %num_subauth110 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %num_subauth110, align 1
  %conv111 = zext i8 %174 to i32
  %mul112 = shl nuw nsw i32 %conv111, 2
  %add113 = add nuw nsw i32 %mul112, 8
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %if.end105.if.end114_crit_edge
  %pgroup_sid.0 = phi ptr [ %add.ptr109, %if.then107 ], [ null, %if.end105.if.end114_crit_edge ]
  %pgroup_sid_size.0 = phi i32 [ %add113, %if.then107 ], [ 0, %if.end105.if.end114_crit_edge ]
  %add115 = add nuw nsw i32 %powner_sid_size.0, 20
  %add116 = add nuw i32 %nt_size.2, 8
  %add117 = add nuw i32 %add116, %add115
  %add118 = add nuw i32 %add117, %pgroup_sid_size.0
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add118, i32 noundef 3520) #16
  %tobool120.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool120.not, label %if.end114.free_aces_base_crit_edge, label %if.end122

if.end114.free_aces_base_crit_edge:               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_aces_base

if.end122:                                        ; preds = %if.end114
  %175 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 256, ptr %call9.i.i, align 128
  %type123 = getelementptr inbounds %struct.smb_ntsd, ptr %call9.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %type123 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1152, ptr %type123, align 2
  %177 = ptrtoint ptr %parent_pntsd to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %parent_pntsd, align 4
  %type124 = getelementptr inbounds %struct.smb_ntsd, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %type124 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %type124, align 1
  %181 = and i16 %180, 4
  %182 = or i16 %181, 1152
  store i16 %182, ptr %type123, align 2
  %osidoffset134 = getelementptr inbounds %struct.smb_ntsd, ptr %178, i32 0, i32 2
  %183 = ptrtoint ptr %osidoffset134 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %osidoffset134, align 1
  %osidoffset135 = getelementptr inbounds %struct.smb_ntsd, ptr %call9.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %osidoffset135 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %osidoffset135, align 4
  %gsidoffset136 = getelementptr inbounds %struct.smb_ntsd, ptr %178, i32 0, i32 3
  %186 = ptrtoint ptr %gsidoffset136 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %gsidoffset136, align 1
  %gsidoffset137 = getelementptr inbounds %struct.smb_ntsd, ptr %call9.i.i, i32 0, i32 3
  %188 = ptrtoint ptr %gsidoffset137 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %gsidoffset137, align 8
  %dacloffset138 = getelementptr inbounds %struct.smb_ntsd, ptr %178, i32 0, i32 5
  %189 = ptrtoint ptr %dacloffset138 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %dacloffset138, align 1
  %dacloffset139 = getelementptr inbounds %struct.smb_ntsd, ptr %call9.i.i, i32 0, i32 5
  %191 = ptrtoint ptr %dacloffset139 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %dacloffset139, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool141.not = icmp eq i32 %184, 0
  br i1 %tobool141.not, label %if.end122.if.end147_crit_edge, label %if.then142

if.end122.if.end147_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then142:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %192 = call i32 @llvm.bswap.i32(i32 %184)
  %add.ptr145 = getelementptr i8, ptr %call9.i.i, i32 %192
  %193 = call ptr @memcpy(ptr %add.ptr145, ptr %powner_sid.0, i32 %powner_sid_size.0)
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end122.if.end147_crit_edge
  %pntsd_size.0 = phi i32 [ %add115, %if.then142 ], [ 20, %if.end122.if.end147_crit_edge ]
  %194 = ptrtoint ptr %gsidoffset137 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %gsidoffset137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool149.not = icmp eq i32 %195, 0
  br i1 %tobool149.not, label %if.end147.if.end155_crit_edge, label %if.then150

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  %196 = call i32 @llvm.bswap.i32(i32 %195)
  %add.ptr153 = getelementptr i8, ptr %call9.i.i, i32 %196
  %197 = call ptr @memcpy(ptr %add.ptr153, ptr %pgroup_sid.0, i32 %pgroup_sid_size.0)
  %add154 = add nuw nsw i32 %pntsd_size.0, %pgroup_sid_size.0
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end147.if.end155_crit_edge
  %pntsd_size.1 = phi i32 [ %add154, %if.then150 ], [ %pntsd_size.0, %if.end147.if.end155_crit_edge ]
  %198 = ptrtoint ptr %dacloffset139 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dacloffset139, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool157.not = icmp eq i32 %199, 0
  br i1 %tobool157.not, label %if.end155.if.end169_crit_edge, label %if.then158

if.end155.if.end169_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  %add.ptr160 = getelementptr i8, ptr %call9.i.i, i32 %200
  %201 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_storeN_noabort(i32 %201, i32 2)
  store i16 512, ptr %add.ptr160, align 1
  %conv163 = trunc i32 %add116 to i16
  %202 = call i16 @llvm.bswap.i16(i16 %conv163)
  %size164 = getelementptr inbounds %struct.smb_acl, ptr %add.ptr160, i32 0, i32 1
  %203 = ptrtoint ptr %size164 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 2)
  store i16 %202, ptr %size164, align 1
  %204 = call i32 @llvm.bswap.i32(i32 %ace_cnt.2)
  %num_aces165 = getelementptr inbounds %struct.smb_acl, ptr %add.ptr160, i32 0, i32 2
  %205 = ptrtoint ptr %num_aces165 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 %204, ptr %num_aces165, align 1
  %add.ptr166 = getelementptr i8, ptr %add.ptr160, i32 8
  %206 = call ptr @memcpy(ptr %add.ptr166, ptr %call9.i, i32 %nt_size.2)
  %add168 = add nuw i32 %pntsd_size.1, %add116
  br label %if.end169

if.end169:                                        ; preds = %if.then158, %if.end155.if.end169_crit_edge
  %pntsd_size.2 = phi i32 [ %add168, %if.then158 ], [ %pntsd_size.1, %if.end155.if.end169_crit_edge ]
  %207 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dentry, align 4
  %call171 = call i32 @ksmbd_vfs_set_sd_xattr(ptr noundef %conn, ptr noundef %10, ptr noundef %208, ptr noundef nonnull %call9.i.i, i32 noundef %pntsd_size.2) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %free_aces_base

free_aces_base:                                   ; preds = %if.end169, %if.end114.free_aces_base_crit_edge, %for.end.free_aces_base_crit_edge, %if.end16.free_aces_base_crit_edge
  %rc.1 = phi i32 [ 0, %for.end.free_aces_base_crit_edge ], [ 0, %if.end169 ], [ -12, %if.end114.free_aces_base_crit_edge ], [ 0, %if.end16.free_aces_base_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %free_parent_pntsd

free_parent_pntsd:                                ; preds = %free_aces_base, %if.end9.free_parent_pntsd_crit_edge, %if.end.free_parent_pntsd_crit_edge
  %rc.2 = phi i32 [ %rc.1, %free_aces_base ], [ -22, %if.end.free_parent_pntsd_crit_edge ], [ -12, %if.end9.free_parent_pntsd_crit_edge ]
  %209 = ptrtoint ptr %parent_pntsd to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %parent_pntsd, align 4
  call void @kfree(ptr noundef %210) #13
  br label %cleanup179

cleanup179:                                       ; preds = %free_parent_pntsd, %entry.cleanup179_crit_edge
  %retval.0 = phi i32 [ %rc.2, %free_parent_pntsd ], [ -2, %entry.cleanup179_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %group_sid) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %owner_sid) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_pntsd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_get_sd_xattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @smb_inherit_flags(i32 noundef %flags, i1 noundef zeroext %is_dir) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_dir, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  br label %return

if.end:                                           ; preds = %entry
  %0 = and i32 %flags, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and7 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ true, %if.end.return_crit_edge ], [ %tobool8.not, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_set_sd_xattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_check_perm_dacl(ptr noundef %conn, ptr nocapture noundef readonly %path, ptr nocapture noundef %pdaccess, i32 noundef %uid) local_unnamed_addr #5 align 64 {
entry:
  %pntsd = alloca ptr, align 4
  %sid = alloca %struct.smb_sid, align 1
  %access_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pntsd) #13
  %4 = ptrtoint ptr %pntsd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pntsd, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sid) #13
  %5 = call ptr @memset(ptr %sid, i32 255, i32 68)
  %6 = ptrtoint ptr %pdaccess to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdaccess, align 4
  %and = and i32 %7, -3
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access_bits) #13
  %9 = ptrtoint ptr %access_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %access_bits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %10 = load i32, ptr @ksmbd_debug_types, align 4
  %and1 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %call6 = call i32 @ksmbd_vfs_get_sd_xattr(ptr noundef %conn, ptr noundef %3, ptr noundef %12, ptr noundef nonnull %pntsd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %do.end5.if.then10_crit_edge, label %lor.lhs.false

do.end5.if.then10_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false:                                    ; preds = %do.end5
  %13 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pntsd, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %dacloffset = getelementptr inbounds %struct.smb_ntsd, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dacloffset to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %dacloffset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %lor.lhs.false8.if.then10_crit_edge, label %if.end11

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false8.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %do.end5.if.then10_crit_edge
  %17 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pntsd, align 4
  call void @kfree(ptr noundef %18) #13
  br label %cleanup185

if.end11:                                         ; preds = %lor.lhs.false8
  %19 = call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr = getelementptr i8, ptr %14, i32 %19
  %add.ptr13 = getelementptr i8, ptr %14, i32 %call6
  %cmp14.not = icmp ugt ptr %add.ptr13, %add.ptr
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %14) #13
  br label %cleanup185

if.end16:                                         ; preds = %if.end11
  %size = getelementptr inbounds %struct.smb_acl, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %size, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv
  %cmp18 = icmp ult ptr %add.ptr13, %add.ptr17
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp23 = icmp ult i16 %22, 8
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp23
  br i1 %or.cond, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %14) #13
  br label %cleanup185

if.end26:                                         ; preds = %if.end16
  %num_aces = getelementptr inbounds %struct.smb_acl, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %num_aces to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %num_aces, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.then28, label %if.end36

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %tobool31.not = icmp eq i16 %21, 2048
  br i1 %tobool31.not, label %land.lhs.true, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then28
  %25 = ptrtoint ptr %pdaccess to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdaccess, align 4
  %and32 = and i32 %26, -1537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true.err_out_crit_edge

land.lhs.true.err_out_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.then28.if.end35_crit_edge
  call void @kfree(ptr noundef nonnull %14) #13
  br label %cleanup185

if.end36:                                         ; preds = %if.end26
  %27 = ptrtoint ptr %pdaccess to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pdaccess, align 4
  %and37 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end55_crit_edge, label %for.body.preheader

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

for.body.preheader:                               ; preds = %if.end36
  %29 = call i32 @llvm.bswap.i32(i32 %24)
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 8
  %umax = call i32 @llvm.umax.i32(i32 %29, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0301 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ace.0300 = phi ptr [ %add.ptr46, %for.inc.for.body_crit_edge ], [ %add.ptr40, %for.body.preheader ]
  %granted.0299 = phi i32 [ %or, %for.inc.for.body_crit_edge ], [ 458880, %for.body.preheader ]
  %size44 = getelementptr inbounds %struct.smb_ace, ptr %ace.0300, i32 0, i32 2
  %30 = ptrtoint ptr %size44 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %size44, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %conv45 = zext i16 %32 to i32
  %add.ptr46 = getelementptr i8, ptr %ace.0300, i32 %conv45
  %cmp47 = icmp ult ptr %add.ptr13, %add.ptr46
  br i1 %cmp47, label %for.body.err_out_crit_edge, label %for.inc

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

for.inc:                                          ; preds = %for.body
  %access_req = getelementptr inbounds %struct.smb_ace, ptr %ace.0300, i32 0, i32 3
  %33 = ptrtoint ptr %access_req to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %access_req, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %or = or i32 %35, %granted.0299
  %inc = add nuw i32 %i.0301, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.if.end55_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end55_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.end55:                                         ; preds = %for.inc.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %granted.1 = phi i32 [ %8, %if.end36.if.end55_crit_edge ], [ %or, %for.inc.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uid)
  %tobool56.not = icmp eq i32 %uid, 0
  %spec.select263 = select i1 %tobool56.not, i32 5, i32 1
  call void @id_to_sid(i32 noundef %uid, i32 noundef %spec.select263, ptr noundef nonnull %sid)
  %add.ptr59 = getelementptr i8, ptr %add.ptr, i32 8
  %36 = ptrtoint ptr %num_aces to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %num_aces, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp62302.not = icmp eq i32 %37, 0
  br i1 %cmp62302.not, label %if.end55.if.end100_crit_edge, label %for.body64.preheader

if.end55.if.end100_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

for.body64.preheader:                             ; preds = %if.end55
  %umax323 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  %sid65343 = getelementptr inbounds %struct.smb_ace, ptr %add.ptr59, i32 0, i32 4
  %call66344 = call i32 @compare_sids(ptr noundef nonnull %sid, ptr noundef %sid65343)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66344)
  %tobool67.not345 = icmp eq i32 %call66344, 0
  br i1 %tobool67.not345, label %for.body64.preheader.for.end88_crit_edge, label %for.body64.preheader.lor.lhs.false68_crit_edge

for.body64.preheader.lor.lhs.false68_crit_edge:   ; preds = %for.body64.preheader
  br label %lor.lhs.false68

for.body64.preheader.for.end88_crit_edge:         ; preds = %for.body64.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end88

for.body64:                                       ; preds = %for.inc86
  %sid65 = getelementptr inbounds %struct.smb_ace, ptr %add.ptr81, i32 0, i32 4
  %call66 = call i32 @compare_sids(ptr noundef nonnull %sid, ptr noundef %sid65)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %for.body64.for.end88_crit_edge, label %for.body64.lor.lhs.false68_crit_edge

for.body64.lor.lhs.false68_crit_edge:             ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false68

for.body64.for.end88_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end88

lor.lhs.false68:                                  ; preds = %for.body64.lor.lhs.false68_crit_edge, %for.body64.preheader.lor.lhs.false68_crit_edge
  %sid65350 = phi ptr [ %sid65, %for.body64.lor.lhs.false68_crit_edge ], [ %sid65343, %for.body64.preheader.lor.lhs.false68_crit_edge ]
  %ace.1303349 = phi ptr [ %add.ptr81, %for.body64.lor.lhs.false68_crit_edge ], [ %add.ptr59, %for.body64.preheader.lor.lhs.false68_crit_edge ]
  %i.1304348 = phi i32 [ %inc87, %for.body64.lor.lhs.false68_crit_edge ], [ 0, %for.body64.preheader.lor.lhs.false68_crit_edge ]
  %others_ace.0305347 = phi ptr [ %spec.select264, %for.body64.lor.lhs.false68_crit_edge ], [ null, %for.body64.preheader.lor.lhs.false68_crit_edge ]
  %cmp62306346 = phi i1 [ %cmp62, %for.body64.lor.lhs.false68_crit_edge ], [ true, %for.body64.preheader.lor.lhs.false68_crit_edge ]
  %call70 = call i32 @compare_sids(ptr noundef nonnull @sid_unix_NFS_mode, ptr noundef %sid65350)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %lor.lhs.false68.for.end88_crit_edge, label %if.end73

lor.lhs.false68.for.end88_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end88

if.end73:                                         ; preds = %lor.lhs.false68
  %call75 = call i32 @compare_sids(ptr noundef nonnull @sid_everyone, ptr noundef %sid65350)
  %size79 = getelementptr inbounds %struct.smb_ace, ptr %ace.1303349, i32 0, i32 2
  %39 = ptrtoint ptr %size79 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %size79, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv80 = zext i16 %41 to i32
  %add.ptr81 = getelementptr i8, ptr %ace.1303349, i32 %conv80
  %cmp82 = icmp ult ptr %add.ptr13, %add.ptr81
  br i1 %cmp82, label %if.end73.err_out_crit_edge, label %for.inc86

if.end73.err_out_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

for.inc86:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %spec.select264 = select i1 %tobool76.not, ptr %ace.1303349, ptr %others_ace.0305347
  %inc87 = add nuw i32 %i.1304348, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc87, i32 %38)
  %cmp62 = icmp ult i32 %inc87, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %inc87, i32 %umax323)
  %exitcond324.not = icmp eq i32 %inc87, %umax323
  br i1 %exitcond324.not, label %for.inc86.if.end100_crit_edge, label %for.body64

for.inc86.if.end100_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

for.end88:                                        ; preds = %lor.lhs.false68.for.end88_crit_edge, %for.body64.for.end88_crit_edge, %for.body64.preheader.for.end88_crit_edge
  %cmp62306.lcssa = phi i1 [ true, %for.body64.preheader.for.end88_crit_edge ], [ %cmp62306346, %lor.lhs.false68.for.end88_crit_edge ], [ %cmp62, %for.body64.for.end88_crit_edge ]
  %others_ace.0305.lcssa = phi ptr [ null, %for.body64.preheader.for.end88_crit_edge ], [ %others_ace.0305347, %lor.lhs.false68.for.end88_crit_edge ], [ %spec.select264, %for.body64.for.end88_crit_edge ]
  %ace.1303.lcssa = phi ptr [ %add.ptr59, %for.body64.preheader.for.end88_crit_edge ], [ %ace.1303349, %lor.lhs.false68.for.end88_crit_edge ], [ %add.ptr81, %for.body64.for.end88_crit_edge ]
  %42 = ptrtoint ptr %pdaccess to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdaccess, align 4
  %and89 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cmp62.not = xor i1 %cmp62306.lcssa, true
  %brmerge = select i1 %tobool90.not, i1 true, i1 %cmp62.not
  br i1 %brmerge, label %for.end88.if.end100_crit_edge, label %if.then93

for.end88.if.end100_crit_edge:                    ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then93:                                        ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #15
  %access_req94 = getelementptr inbounds %struct.smb_ace, ptr %ace.1303.lcssa, i32 0, i32 3
  %44 = ptrtoint ptr %access_req94 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %access_req94, align 1
  %46 = or i32 %45, -2147481856
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %for.end88.if.end100_crit_edge, %for.inc86.if.end100_crit_edge, %if.end55.if.end100_crit_edge
  %ace.1295 = phi ptr [ %ace.1303.lcssa, %if.then93 ], [ %ace.1303.lcssa, %for.end88.if.end100_crit_edge ], [ %add.ptr59, %if.end55.if.end100_crit_edge ], [ %add.ptr81, %for.inc86.if.end100_crit_edge ]
  %others_ace.0292 = phi ptr [ %others_ace.0305.lcssa, %if.then93 ], [ %others_ace.0305.lcssa, %for.end88.if.end100_crit_edge ], [ null, %if.end55.if.end100_crit_edge ], [ %spec.select264, %for.inc86.if.end100_crit_edge ]
  %cmp62287 = phi i1 [ %cmp62306.lcssa, %if.then93 ], [ %cmp62306.lcssa, %for.end88.if.end100_crit_edge ], [ false, %if.end55.if.end100_crit_edge ], [ %cmp62, %for.inc86.if.end100_crit_edge ]
  %granted.2 = phi i32 [ %47, %if.then93 ], [ %granted.1, %for.end88.if.end100_crit_edge ], [ %granted.1, %if.end55.if.end100_crit_edge ], [ %granted.1, %for.inc86.if.end100_crit_edge ]
  %48 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d_inode.i, align 8
  %call103 = call ptr @get_acl(ptr noundef %51, i32 noundef 32768) #13
  %tobool104.not = icmp eq ptr %call103, null
  %brmerge265 = select i1 %tobool104.not, i1 true, i1 %cmp62287
  br i1 %brmerge265, label %if.end100.if.end136_crit_edge, label %if.then107

if.end100.if.end136_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.then107:                                       ; preds = %if.end100
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %call103, i32 0, i32 2
  %52 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp109310.not = icmp eq i32 %53, 0
  br i1 %cmp109310.not, label %if.then107.if.end136_crit_edge, label %for.body111.lr.ph

if.then107.if.end136_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

for.body111.lr.ph:                                ; preds = %if.then107
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call103, i32 0, i32 3
  %cmp.i.i.i.i268 = icmp eq ptr %3, @init_user_ns
  br label %for.body111

for.body111:                                      ; preds = %for.inc133.for.body111_crit_edge, %for.body111.lr.ph
  %pa_entry.0312 = phi ptr [ %a_entries, %for.body111.lr.ph ], [ %incdec.ptr, %for.inc133.for.body111_crit_edge ]
  %i.2311 = phi i32 [ 0, %for.body111.lr.ph ], [ %inc134, %for.inc133.for.body111_crit_edge ]
  %54 = ptrtoint ptr %pa_entry.0312 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pa_entry.0312, align 4
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %55, label %for.body111.for.inc133_crit_edge [
    i16 2, label %if.then115
    i16 8, label %if.then121
  ]

for.body111.for.inc133_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc133

if.then115:                                       ; preds = %for.body111
  %57 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.0312, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack.i = load i32, ptr %57, align 4
  br i1 %cmp.i.i.i.i268, label %if.then115.posix_acl_uid_translate.exit_crit_edge, label %if.end7.i.i

if.then115.posix_acl_uid_translate.exit_crit_edge: ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit

if.end7.i.i:                                      ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.posix_acl_uid_translate.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i = call i32 @make_kuid(ptr noundef %3, i32 noundef %.unpack.i) #13
  br label %posix_acl_uid_translate.exit

posix_acl_uid_translate.exit:                     ; preds = %if.end9.i.i, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, %if.then115.posix_acl_uid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge ], [ %.unpack.i, %if.then115.posix_acl_uid_translate.exit_crit_edge ]
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call3.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #13
  br label %if.end125

if.then121:                                       ; preds = %for.body111
  %59 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.0312, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack.i267 = load i32, ptr %59, align 4
  br i1 %cmp.i.i.i.i268, label %if.then121.posix_acl_gid_translate.exit_crit_edge, label %if.end7.i.i270

if.then121.posix_acl_gid_translate.exit_crit_edge: ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit

if.end7.i.i270:                                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i267)
  %cmp.i.i269 = icmp eq i32 %.unpack.i267, -1
  br i1 %cmp.i.i269, label %if.end7.i.i270.posix_acl_gid_translate.exit_crit_edge, label %if.end9.i.i272

if.end7.i.i270.posix_acl_gid_translate.exit_crit_edge: ; preds = %if.end7.i.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit

if.end9.i.i272:                                   ; preds = %if.end7.i.i270
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i271 = call i32 @make_kgid(ptr noundef %3, i32 noundef %.unpack.i267) #13
  br label %posix_acl_gid_translate.exit

posix_acl_gid_translate.exit:                     ; preds = %if.end9.i.i272, %if.end7.i.i270.posix_acl_gid_translate.exit_crit_edge, %if.then121.posix_acl_gid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i273 = phi i32 [ %call10.i.i271, %if.end9.i.i272 ], [ -1, %if.end7.i.i270.posix_acl_gid_translate.exit_crit_edge ], [ %.unpack.i267, %if.then121.posix_acl_gid_translate.exit_crit_edge ]
  %.fca.0.insert.i274 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i273, 0
  %call3.i275 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i274) #13
  br label %if.end125

if.end125:                                        ; preds = %posix_acl_gid_translate.exit, %posix_acl_uid_translate.exit
  %id.0 = phi i32 [ %call3.i, %posix_acl_uid_translate.exit ], [ %call3.i275, %posix_acl_gid_translate.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0, i32 %uid)
  %cmp126 = icmp eq i32 %id.0, %uid
  br i1 %cmp126, label %if.then128, label %if.end125.for.inc133_crit_edge

if.end125.for.inc133_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc133

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa_entry.0312, i32 0, i32 1
  %61 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %e_perm, align 2
  call fastcc void @mode_to_access_flags(i16 noundef zeroext %62, i16 noundef zeroext 511, ptr noundef nonnull %access_bits)
  %63 = ptrtoint ptr %access_bits to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %access_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool129.not = icmp eq i32 %64, 0
  %spec.store.select282 = select i1 %tobool129.not, i32 1179784, i32 %64
  %65 = ptrtoint ptr %access_bits to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.store.select282, ptr %access_bits, align 4
  br label %check_access_bits

for.inc133:                                       ; preds = %if.end125.for.inc133_crit_edge, %for.body111.for.inc133_crit_edge
  %inc134 = add nuw i32 %i.2311, 1
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa_entry.0312, i32 1
  %66 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %a_count, align 4
  %cmp109 = icmp ult i32 %inc134, %67
  br i1 %cmp109, label %for.inc133.for.body111_crit_edge, label %for.inc133.if.end136_crit_edge

for.inc133.if.end136_crit_edge:                   ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

for.inc133.for.body111_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111

if.end136:                                        ; preds = %for.inc133.if.end136_crit_edge, %if.then107.if.end136_crit_edge, %if.end100.if.end136_crit_edge
  br i1 %tobool104.not, label %if.end136.if.end139_crit_edge, label %if.then138

if.end136.if.end139_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @posix_acl_release(ptr noundef nonnull %call103)
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end136.if.end139_crit_edge
  br i1 %cmp62287, label %if.end139.if.end158_crit_edge, label %if.then141

if.end139.if.end158_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then141:                                       ; preds = %if.end139
  %tobool142.not = icmp eq ptr %others_ace.0292, null
  br i1 %tobool142.not, label %do.body145, label %if.then141.if.end158_crit_edge

if.then141.if.end158_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

do.body145:                                       ; preds = %if.then141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %68 = load i32, ptr @ksmbd_debug_types, align 4
  %and146 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.body145.err_out_crit_edge, label %do.end151

do.body145.err_out_crit_edge:                     ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

do.end151:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #15
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  br label %err_out

if.end158:                                        ; preds = %if.then141.if.end158_crit_edge, %if.end139.if.end158_crit_edge
  %ace.2 = phi ptr [ %ace.1295, %if.end139.if.end158_crit_edge ], [ %others_ace.0292, %if.then141.if.end158_crit_edge ]
  %69 = ptrtoint ptr %ace.2 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ace.2, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %70, label %if.end158.check_access_bits_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end158.sw.bb161_crit_edge
    i8 10, label %if.end158.sw.bb161_crit_edge361
  ]

if.end158.sw.bb161_crit_edge361:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb161

if.end158.sw.bb161_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb161

if.end158.check_access_bits_crit_edge:            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_access_bits

sw.bb:                                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %access_req160 = getelementptr inbounds %struct.smb_ace, ptr %ace.2, i32 0, i32 3
  %72 = ptrtoint ptr %access_req160 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %access_req160, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %access_bits to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %access_bits, align 4
  br label %check_access_bits

sw.bb161:                                         ; preds = %if.end158.sw.bb161_crit_edge, %if.end158.sw.bb161_crit_edge361
  %access_req162 = getelementptr inbounds %struct.smb_ace, ptr %ace.2, i32 0, i32 3
  %76 = ptrtoint ptr %access_req162 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %access_req162, align 1
  %neg = xor i32 %77, -1
  %78 = call i32 @llvm.bswap.i32(i32 %neg)
  %79 = ptrtoint ptr %access_bits to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %access_bits, align 4
  br label %check_access_bits

check_access_bits:                                ; preds = %sw.bb161, %sw.bb, %if.end158.check_access_bits_crit_edge, %if.then128
  %ace.3 = phi ptr [ %ace.2, %if.end158.check_access_bits_crit_edge ], [ %ace.2, %sw.bb161 ], [ %ace.2, %sw.bb ], [ %ace.1295, %if.then128 ]
  %80 = ptrtoint ptr %access_bits to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %access_bits, align 4
  %82 = and i32 %81, -458881
  %neg167 = xor i32 %82, -458881
  %and168 = and i32 %neg167, %granted.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end184, label %do.body171

do.body171:                                       ; preds = %check_access_bits
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %83 = load i32, ptr @ksmbd_debug_types, align 4
  %and172 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body171.err_out_crit_edge, label %do.end177

do.body171.err_out_crit_edge:                     ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  %access_req179 = getelementptr inbounds %struct.smb_ace, ptr %ace.3, i32 0, i32 3
  %84 = ptrtoint ptr %access_req179 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %access_req179, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %granted.2, i32 noundef %86) #17
  br label %err_out

if.end184:                                        ; preds = %check_access_bits
  call void @__sanitizer_cov_trace_pc() #15
  %87 = call i32 @llvm.bswap.i32(i32 %granted.2)
  %88 = ptrtoint ptr %pdaccess to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %pdaccess, align 4
  br label %err_out

err_out:                                          ; preds = %if.end184, %do.end177, %do.body171.err_out_crit_edge, %do.end151, %do.body145.err_out_crit_edge, %if.end73.err_out_crit_edge, %for.body.err_out_crit_edge, %land.lhs.true.err_out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end184 ], [ -13, %land.lhs.true.err_out_crit_edge ], [ -13, %do.end151 ], [ -13, %do.body145.err_out_crit_edge ], [ -13, %do.end177 ], [ -13, %do.body171.err_out_crit_edge ], [ 0, %if.end73.err_out_crit_edge ], [ 0, %for.body.err_out_crit_edge ]
  %89 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pntsd, align 4
  call void @kfree(ptr noundef %90) #13
  br label %cleanup185

cleanup185:                                       ; preds = %err_out, %if.end35, %if.then25, %if.then15, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then15 ], [ 0, %if.then25 ], [ %rc.0, %err_out ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access_bits) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sid) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pntsd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mode_to_access_flags(i16 noundef zeroext %mode, i16 noundef zeroext %bits_to_use, ptr nocapture noundef %pace_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and32 = and i16 %bits_to_use, %mode
  %conv3 = zext i16 %and32 to i32
  %and4 = and i32 %conv3, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2031753
  %and6 = and i32 %conv3, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or9 = or i32 %spec.select, 278
  %spec.select33 = select i1 %tobool7.not, i32 %spec.select, i32 %or9
  %0 = ptrtoint ptr %pace_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select33, ptr %pace_flags, align 4
  %and12 = and i32 %conv3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %entry.do.body_crit_edge, label %if.then14

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %pace_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pace_flags, align 4
  %or15 = or i32 %2, 2032056
  store i32 %or15, ptr %pace_flags, align 4
  br label %do.body

do.body:                                          ; preds = %if.then14, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %3 = load i32, ptr @ksmbd_debug_types, align 4
  %and17 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body.do.end23_crit_edge, label %do.end

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pace_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pace_flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv3, i32 noundef %5) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !117

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #13
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_info_sec(ptr noundef %conn, ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %path, ptr noundef %pntsd, i32 noundef %ntsd_len, i1 noundef zeroext %type_check) local_unnamed_addr #5 align 64 {
entry:
  %fattr = alloca %struct.smb_fattr, align 4
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fattr) #13
  %0 = getelementptr inbounds i8, ptr %fattr, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #13
  %10 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %11 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %fattr, align 4
  %cf_gid = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 1
  %12 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cf_gid, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %5, align 8
  %cf_mode = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 2
  %15 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cf_mode, align 4
  %call4 = call i32 @parse_sec_desc(ptr noundef %9, ptr noundef %pntsd, i32 noundef %ntsd_len, ptr noundef nonnull %fattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %newattrs, align 8
  %17 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.0.load = load i32, ptr %fattr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.0.load)
  %cmp.i = icmp eq i32 %.fca.0.load, -1
  br i1 %cmp.i, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 66, ptr %newattrs, align 8
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2
  %19 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.fca.0.load, ptr %ia_uid, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %20 = ptrtoint ptr %cf_gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.0.load115 = load i32, ptr %cf_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.0.load115)
  %cmp.i132 = icmp eq i32 %.fca.0.load115, -1
  br i1 %cmp.i132, label %if.end13.if.end24_crit_edge, label %if.then20

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %newattrs, align 8
  %or22 = or i32 %22, 4
  store i32 %or22, ptr %newattrs, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3
  %23 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.fca.0.load115, ptr %ia_gid, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end13.if.end24_crit_edge
  %24 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %newattrs, align 8
  %or26 = or i32 %25, 1
  store i32 %or26, ptr %newattrs, align 8
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %5, align 8
  %28 = and i16 %27, -512
  %29 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cf_mode, align 4
  %31 = and i16 %30, 511
  %or31131 = or i16 %31, %28
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  %32 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or31131, ptr %ia_mode, align 4
  %33 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dentry, align 4
  %call34 = tail call i32 @ksmbd_vfs_remove_acl_xattrs(ptr noundef %9, ptr noundef %34) #13
  %cf_dacls = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 5
  %35 = ptrtoint ptr %cf_dacls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cf_dacls, align 4
  %tobool35.not = icmp eq ptr %36, null
  br i1 %tobool35.not, label %if.end24.if.end75_crit_edge, label %if.then36

if.end24.if.end75_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then36:                                        ; preds = %if.end24
  %cf_acls = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 4
  %37 = ptrtoint ptr %cf_acls to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf_acls, align 4
  %call37 = tail call i32 @set_posix_acl(ptr noundef %9, ptr noundef %5, i32 noundef 32768, ptr noundef %38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %do.body, label %if.then36.if.end48_crit_edge

if.then36.if.end48_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.body:                                          ; preds = %if.then36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %39 = load i32, ptr @ksmbd_debug_types, align 4
  %and40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body.if.end48_crit_edge, label %do.end

do.body.if.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call37) #17
  br label %if.end48

if.end48:                                         ; preds = %do.end, %do.body.if.end48_crit_edge, %if.then36.if.end48_crit_edge
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %5, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %42)
  %cmp52 = icmp eq i16 %42, 16384
  br i1 %cmp52, label %if.then56, label %if.end48.if.end75_crit_edge

if.end48.if.end75_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then56:                                        ; preds = %if.end48
  %call58 = tail call i32 @set_posix_acl(ptr noundef %9, ptr noundef %5, i32 noundef 16384, ptr noundef nonnull %36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end75_crit_edge, label %do.body61

if.then56.if.end75_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

do.body61:                                        ; preds = %if.then56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %43 = load i32, ptr @ksmbd_debug_types, align 4
  %and62 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.if.end75_crit_edge, label %do.end67

do.body61.if.end75_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call58) #17
  br label %if.end75

if.end75:                                         ; preds = %do.end67, %do.body61.if.end75_crit_edge, %if.then56.if.end75_crit_edge, %if.end48.if.end75_crit_edge, %if.end24.if.end75_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %44 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dentry, align 4
  %call77 = call i32 @notify_change(ptr noundef %9, ptr noundef %45, ptr noundef nonnull %newattrs, ptr noundef null) #13
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end80:                                         ; preds = %if.end75
  br i1 %type_check, label %land.lhs.true83, label %if.end80.if.end88_crit_edge

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true83:                                  ; preds = %if.end80
  %type = getelementptr inbounds %struct.smb_ntsd, ptr %pntsd, i32 0, i32 1
  %46 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %type, align 1
  %48 = and i16 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool86.not = icmp eq i16 %48, 0
  br i1 %tobool86.not, label %land.lhs.true83.out_crit_edge, label %land.lhs.true83.if.end88_crit_edge

land.lhs.true83.if.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true83.out_crit_edge:                    ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end88:                                         ; preds = %land.lhs.true83.if.end88_crit_edge, %if.end80.if.end88_crit_edge
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %tcon, i32 0, i32 2
  %49 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %share_conf, align 4
  %flags.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool90.not = icmp eq i32 %and.i, 0
  br i1 %tobool90.not, label %if.end88.out_crit_edge, label %if.then91

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dentry, align 4
  %call93 = call i32 @ksmbd_vfs_remove_sd_xattrs(ptr noundef %9, ptr noundef %54) #13
  %55 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dentry, align 4
  %call95 = call i32 @ksmbd_vfs_set_sd_xattr(ptr noundef %conn, ptr noundef %9, ptr noundef %56, ptr noundef %pntsd, i32 noundef %ntsd_len) #13
  br label %out

out:                                              ; preds = %if.then91, %if.end88.out_crit_edge, %land.lhs.true83.out_crit_edge, %if.end75.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call4, %entry.out_crit_edge ], [ %call77, %if.end75.out_crit_edge ], [ 0, %if.then91 ], [ 0, %if.end88.out_crit_edge ], [ 0, %land.lhs.true83.out_crit_edge ]
  %cf_acls97 = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 4
  %57 = ptrtoint ptr %cf_acls97 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf_acls97, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %out.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out.posix_acl_release.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %58, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  call void @llvm.prefetch.p0(ptr nonnull %58, i32 1, i32 3, i32 1) #13
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !117

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %58, i32 noundef 3) #13
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %58, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out.posix_acl_release.exit_crit_edge
  %cf_dacls98 = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 5
  %60 = ptrtoint ptr %cf_dacls98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf_dacls98, align 4
  %tobool.not.i134 = icmp eq ptr %61, null
  br i1 %tobool.not.i134, label %posix_acl_release.exit.posix_acl_release.exit144_crit_edge, label %land.lhs.true.i138

posix_acl_release.exit.posix_acl_release.exit144_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_release.exit144

land.lhs.true.i138:                               ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %61, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  call void @llvm.prefetch.p0(ptr nonnull %61, i32 1, i32 3, i32 1) #13
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i136 = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i136)
  %cmp.i.i.i.i137 = icmp eq i32 %asmresult.i.i.i.i.i.i.i136, 1
  br i1 %cmp.i.i.i.i137, label %do.end.i143, label %if.end5.i.i.i.i140

if.end5.i.i.i.i140:                               ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i136)
  %.not.i.i.i.i139 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i136, 0
  br i1 %.not.i.i.i.i139, label %if.end5.i.i.i.i140.posix_acl_release.exit144_crit_edge, label %if.then10.i.i.i.i141, !prof !117

if.end5.i.i.i.i140.posix_acl_release.exit144_crit_edge: ; preds = %if.end5.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_release.exit144

if.then10.i.i.i.i141:                             ; preds = %if.end5.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %61, i32 noundef 3) #13
  br label %posix_acl_release.exit144

do.end.i143:                                      ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  %a_rcu.i142 = getelementptr inbounds %struct.posix_acl, ptr %61, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i142, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %posix_acl_release.exit144

posix_acl_release.exit144:                        ; preds = %do.end.i143, %if.then10.i.i.i.i141, %if.end5.i.i.i.i140.posix_acl_release.exit144_crit_edge, %posix_acl_release.exit.posix_acl_release.exit144_crit_edge
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fattr) #13
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_remove_acl_xattrs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_posix_acl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_remove_sd_xattrs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_init_domain(ptr nocapture noundef readonly %sub_auth) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11), ptr @domain, i32 68)
  %1 = ptrtoint ptr %sub_auth to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sub_auth, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 1) to i32))
  store i32 %3, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 1), align 4
  %arrayidx.1 = getelementptr i32, ptr %sub_auth, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 2) to i32))
  store i32 %6, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 2), align 4
  %arrayidx.2 = getelementptr i32, ptr %sub_auth, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 3) to i32))
  store i32 %9, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 11, i32 3, i32 3), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb_map_generic_desired_access(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @access_flags_to_mode(ptr nocapture noundef readonly %fattr, i32 noundef %ace_flags, i32 noundef %type) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %ace_flags)
  %and = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and1 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #17
  br label %cleanup

if.end7:                                          ; preds = %entry
  %2 = and i32 %0, -2147483511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %mode.0 = select i1 %3, i16 0, i16 292
  %4 = and i32 %0, 1073742102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end7.if.end29_crit_edge, label %if.then19

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %cf_mode = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 2
  %6 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cf_mode, align 4
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  %spec.select.v = select i1 %cmp, i16 219, i16 146
  %spec.select = or i16 %spec.select.v, %mode.0
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %if.end7.if.end29_crit_edge
  %mode.1 = phi i16 [ %mode.0, %if.end7.if.end29_crit_edge ], [ %spec.select, %if.then19 ]
  %9 = and i32 %0, 536870944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = or i16 %mode.1, 73
  %mode.2 = select i1 %10, i16 %mode.1, i16 %11
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %type, label %if.end29.do.body49_crit_edge [
    i32 1, label %if.end29.if.then45_crit_edge
    i32 6, label %if.end29.if.then45_crit_edge79
  ]

if.end29.if.then45_crit_edge79:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

if.end29.if.then45_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

if.end29.do.body49_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49

if.then45:                                        ; preds = %if.end29.if.then45_crit_edge, %if.end29.if.then45_crit_edge79
  %neg = xor i16 %mode.2, -1
  br label %do.body49

do.body49:                                        ; preds = %if.then45, %if.end29.do.body49_crit_edge
  %mode.3 = phi i16 [ %neg, %if.then45 ], [ %mode.2, %if.end29.do.body49_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %13 = load i32, ptr @ksmbd_debug_types, align 4
  %and50 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %do.end55

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #15
  %conv57 = zext i16 %mode.3 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %0, i32 noundef %conv57) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.body49.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ 511, %do.end ], [ 511, %if.then.cleanup_crit_edge ], [ %mode.3, %do.end55 ], [ %mode.3, %do.body49.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_posix_acl_entries_dacl(ptr noundef %user_ns, ptr nocapture noundef %pndace, ptr nocapture noundef readonly %fattr, ptr nocapture noundef %num_aces, ptr nocapture noundef %size, i32 noundef %nt_aces_num) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cf_acls = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 4
  %0 = ptrtoint ptr %cf_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cf_acls, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.posix_default_acl_crit_edge, label %if.end

entry.posix_default_acl_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_default_acl

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cf_acls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cf_acls, align 4
  %a_count284 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %a_count284 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a_count284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp285.not = icmp eq i32 %5, 0
  br i1 %cmp285.not, label %if.end.for.end106_crit_edge, label %for.body.lr.ph

if.end.for.end106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end106

for.body.lr.ph:                                   ; preds = %if.end
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nt_aces_num)
  %tobool24.not = icmp eq i32 %nt_aces_num, 0
  %cmp.i.i.i.i246 = icmp eq ptr %user_ns, @init_user_ns
  %cf_mode = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc104.for.body_crit_edge, %for.body.lr.ph
  %pace.0287 = phi ptr [ %a_entries, %for.body.lr.ph ], [ %incdec.ptr, %for.inc104.for.body_crit_edge ]
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc105, %for.inc104.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 68) #18
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %for.body.for.end106_crit_edge, label %if.end5

for.body.for.end106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end106

if.end5:                                          ; preds = %for.body
  %7 = ptrtoint ptr %pace.0287 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pace.0287, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %8, label %if.end5.for.inc104_crit_edge [
    i16 2, label %if.then8
    i16 8, label %if.then17
    i16 32, label %land.lhs.true
  ]

if.end5.for.inc104_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

if.then8:                                         ; preds = %if.end5
  %10 = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.0287, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %10, align 4
  br i1 %cmp.i.i.i.i246, label %if.then8.posix_acl_uid_translate.exit_crit_edge, label %if.end7.i.i

if.then8.posix_acl_uid_translate.exit_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit

if.end7.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.posix_acl_uid_translate.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %user_ns, i32 noundef %.unpack.i) #13
  br label %posix_acl_uid_translate.exit

posix_acl_uid_translate.exit:                     ; preds = %if.end9.i.i, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge, %if.then8.posix_acl_uid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.posix_acl_uid_translate.exit_crit_edge ], [ %.unpack.i, %if.then8.posix_acl_uid_translate.exit_crit_edge ]
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call3.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool10.not = icmp eq i32 %call3.i, 0
  %spec.select = select i1 %tobool10.not, i32 5, i32 1
  tail call void @id_to_sid(i32 noundef %call3.i, i32 noundef %spec.select, ptr noundef nonnull %call7.i)
  br label %if.end29

if.then17:                                        ; preds = %if.end5
  %12 = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.0287, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i245 = load i32, ptr %12, align 4
  br i1 %cmp.i.i.i.i246, label %if.then17.posix_acl_gid_translate.exit_crit_edge, label %if.end7.i.i248

if.then17.posix_acl_gid_translate.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit

if.end7.i.i248:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i245)
  %cmp.i.i247 = icmp eq i32 %.unpack.i245, -1
  br i1 %cmp.i.i247, label %if.end7.i.i248.posix_acl_gid_translate.exit_crit_edge, label %if.end9.i.i250

if.end7.i.i248.posix_acl_gid_translate.exit_crit_edge: ; preds = %if.end7.i.i248
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit

if.end9.i.i250:                                   ; preds = %if.end7.i.i248
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i249 = tail call i32 @make_kgid(ptr noundef %user_ns, i32 noundef %.unpack.i245) #13
  br label %posix_acl_gid_translate.exit

posix_acl_gid_translate.exit:                     ; preds = %if.end9.i.i250, %if.end7.i.i248.posix_acl_gid_translate.exit_crit_edge, %if.then17.posix_acl_gid_translate.exit_crit_edge
  %retval.sroa.0.0.i.i251 = phi i32 [ %call10.i.i249, %if.end9.i.i250 ], [ -1, %if.end7.i.i248.posix_acl_gid_translate.exit_crit_edge ], [ %.unpack.i245, %if.then17.posix_acl_gid_translate.exit_crit_edge ]
  %.fca.0.insert.i252 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i251, 0
  %call3.i253 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i252) #13
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %call7.i, align 8
  %num_subauth7.i34.i = getelementptr inbounds %struct.smb_sid, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_subauth7.i34.i, align 1
  %arrayidx11.i35.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 0
  %arrayidx11.5.i40.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 5
  %16 = call ptr @memset(ptr %arrayidx11.i35.i, i32 0, i32 5)
  %17 = ptrtoint ptr %arrayidx11.5.i40.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 22, ptr %arrayidx11.5.i40.i, align 1
  br label %for.body17.i47.i

for.body17.i47.i:                                 ; preds = %for.body17.i47.i.for.body17.i47.i_crit_edge, %posix_acl_gid_translate.exit
  %i.143.i41.i = phi i32 [ %inc22.i44.i, %for.body17.i47.i.for.body17.i47.i_crit_edge ], [ 0, %posix_acl_gid_translate.exit ]
  %arrayidx18.i42.i = getelementptr %struct.smb_sid, ptr @sid_unix_groups, i32 0, i32 3, i32 %i.143.i41.i
  %18 = ptrtoint ptr %arrayidx18.i42.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx18.i42.i, align 1
  %arrayidx20.i43.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 3, i32 %i.143.i41.i
  %20 = ptrtoint ptr %arrayidx20.i43.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx20.i43.i, align 4
  %inc22.i44.i = add nuw nsw i32 %i.143.i41.i, 1
  %21 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_subauth7.i34.i, align 1
  %conv14.i45.i = zext i8 %22 to i32
  %cmp15.i46.i = icmp ult i32 %inc22.i44.i, %conv14.i45.i
  br i1 %cmp15.i46.i, label %for.body17.i47.i.for.body17.i47.i_crit_edge, label %id_to_sid.exit

for.body17.i47.i.for.body17.i47.i_crit_edge:      ; preds = %for.body17.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i47.i

id_to_sid.exit:                                   ; preds = %for.body17.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv14.i45.i.le = zext i8 %22 to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %call3.i253) #13
  %arrayidx.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 3, i32 %conv14.i45.i.le
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %inc.i = add i8 %22, 1
  %25 = ptrtoint ptr %num_subauth7.i34.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %inc.i, ptr %num_subauth7.i34.i, align 1
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end5
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.for.inc104_crit_edge

land.lhs.true.for.inc104_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

if.then25:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %call7.i, align 8
  %num_subauth7.i = getelementptr inbounds %struct.smb_sid, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %num_subauth7.i, align 1
  %arrayidx11.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 0
  %arrayidx11.5.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 2, i32 5
  %28 = call ptr @memset(ptr %arrayidx11.i, i32 0, i32 5)
  %29 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx11.5.i, align 1
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.then25
  %i.143.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %if.then25 ]
  %arrayidx18.i = getelementptr %struct.smb_sid, ptr @sid_everyone, i32 0, i32 3, i32 %i.143.i
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 3, i32 %i.143.i
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx20.i, align 4
  %inc22.i = add nuw nsw i32 %i.143.i, 1
  %33 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_subauth7.i, align 1
  %conv14.i = zext i8 %34 to i32
  %cmp15.i = icmp ult i32 %inc22.i, %conv14.i
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.if.end29_crit_edge

for.body17.i.if.end29_crit_edge:                  ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i

if.end29:                                         ; preds = %for.body17.i.if.end29_crit_edge, %id_to_sid.exit, %posix_acl_uid_translate.exit
  br i1 %tobool24.not, label %if.end29.for.end_crit_edge, label %for.body33.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body33.lr.ph:                                 ; preds = %if.end29
  %num_subauth38 = getelementptr inbounds %struct.smb_sid, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %num_subauth38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_subauth38, align 1
  %conv39 = zext i8 %36 to i32
  %sub40 = add nsw i32 %conv39, -1
  %arrayidx41 = getelementptr %struct.smb_sid, ptr %call7.i, i32 0, i32 3, i32 %sub40
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx41, align 4
  br label %for.body33

for.body33:                                       ; preds = %if.end45.for.body33_crit_edge, %for.body33.lr.ph
  %ntace.0283 = phi ptr [ %pndace, %for.body33.lr.ph ], [ %add.ptr, %if.end45.for.body33_crit_edge ]
  %j.0282 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %if.end45.for.body33_crit_edge ]
  %num_subauth = getelementptr inbounds %struct.smb_ace, ptr %ntace.0283, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_subauth, align 1
  %conv36 = zext i8 %40 to i32
  %sub = add nsw i32 %conv36, -1
  %arrayidx = getelementptr %struct.smb_ace, ptr %ntace.0283, i32 0, i32 4, i32 3, i32 %sub
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %38)
  %cmp42 = icmp eq i32 %42, %38
  br i1 %cmp42, label %for.body33.for.inc104_crit_edge, label %if.end45

for.body33.for.inc104_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

if.end45:                                         ; preds = %for.body33
  %size46 = getelementptr inbounds %struct.smb_ace, ptr %ntace.0283, i32 0, i32 2
  %43 = ptrtoint ptr %size46 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %size46, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %conv47 = zext i16 %45 to i32
  %add.ptr = getelementptr i8, ptr %ntace.0283, i32 %conv47
  %inc = add nuw i32 %j.0282, 1
  %exitcond.not = icmp eq i32 %inc, %nt_aces_num
  br i1 %exitcond.not, label %if.end45.for.end_crit_edge, label %if.end45.for.body33_crit_edge

if.end45.for.body33_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body33

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end45.for.end_crit_edge, %if.end29.for.end_crit_edge
  %46 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cf_mode, align 4
  %48 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %48)
  %cmp49 = icmp eq i16 %48, 16384
  br i1 %cmp49, label %land.lhs.true51, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true51:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %pace.0287 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pace.0287, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %50)
  %cmp54 = icmp eq i16 %50, 32
  %spec.select243 = select i1 %cmp54, i32 3, i32 0
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true51, %for.end.if.end57_crit_edge
  %flags.0 = phi i32 [ 0, %for.end.if.end57_crit_edge ], [ %spec.select243, %land.lhs.true51 ]
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %size, align 2
  %conv58 = zext i16 %52 to i32
  %add.ptr59 = getelementptr i8, ptr %pndace, i32 %conv58
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.0287, i32 0, i32 1
  %53 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %e_perm, align 2
  %call60 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr59, ptr noundef nonnull %call7.i, i32 noundef %flags.0, i16 noundef zeroext %54, i16 noundef zeroext 511)
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %size, align 2
  %add = add i16 %56, %call60
  store i16 %add, ptr %size, align 2
  %57 = ptrtoint ptr %num_aces to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_aces, align 4
  %inc64 = add i32 %58, 1
  store i32 %inc64, ptr %num_aces, align 4
  %59 = ptrtoint ptr %pace.0287 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pace.0287, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %60)
  %cmp67 = icmp eq i16 %60, 2
  br i1 %cmp67, label %if.then69, label %if.end57.if.end70_crit_edge

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then69:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %access_req = getelementptr inbounds %struct.smb_ace, ptr %add.ptr59, i32 0, i32 3
  %61 = ptrtoint ptr %access_req to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %access_req, align 1
  %or = or i32 %62, 1073742080
  store i32 %or, ptr %access_req, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end57.if.end70_crit_edge
  %63 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cf_mode, align 4
  %65 = and i16 %64, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %65)
  %cmp74 = icmp eq i16 %65, 16384
  br i1 %cmp74, label %land.lhs.true76, label %if.end70.for.inc104_crit_edge

if.end70.for.inc104_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

land.lhs.true76:                                  ; preds = %if.end70
  %66 = ptrtoint ptr %pace.0287 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pace.0287, align 4
  %68 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %67, label %land.lhs.true76.for.inc104_crit_edge [
    i16 2, label %land.lhs.true76.if.then85_crit_edge
    i16 8, label %land.lhs.true76.if.then85_crit_edge303
  ]

land.lhs.true76.if.then85_crit_edge303:           ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

land.lhs.true76.if.then85_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

land.lhs.true76.for.inc104_crit_edge:             ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

if.then85:                                        ; preds = %land.lhs.true76.if.then85_crit_edge, %land.lhs.true76.if.then85_crit_edge303
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %size, align 2
  %conv86 = zext i16 %70 to i32
  %add.ptr87 = getelementptr i8, ptr %pndace, i32 %conv86
  %71 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %e_perm, align 2
  %call89 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr87, ptr noundef nonnull %call7.i, i32 noundef 3, i16 noundef zeroext %72, i16 noundef zeroext 511)
  %73 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size, align 2
  %add92 = add i16 %74, %call89
  store i16 %add92, ptr %size, align 2
  %75 = ptrtoint ptr %num_aces to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_aces, align 4
  %inc94 = add i32 %76, 1
  store i32 %inc94, ptr %num_aces, align 4
  %77 = ptrtoint ptr %pace.0287 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pace.0287, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %78)
  %cmp97 = icmp eq i16 %78, 2
  br i1 %cmp97, label %if.then99, label %if.then85.for.inc104_crit_edge

if.then85.for.inc104_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc104

if.then99:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  %access_req100 = getelementptr inbounds %struct.smb_ace, ptr %add.ptr87, i32 0, i32 3
  %79 = ptrtoint ptr %access_req100 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %access_req100, align 1
  %or101 = or i32 %80, 1073742080
  store i32 %or101, ptr %access_req100, align 1
  br label %for.inc104

for.inc104:                                       ; preds = %if.then99, %if.then85.for.inc104_crit_edge, %land.lhs.true76.for.inc104_crit_edge, %if.end70.for.inc104_crit_edge, %for.body33.for.inc104_crit_edge, %land.lhs.true.for.inc104_crit_edge, %if.end5.for.inc104_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  %inc105 = add nuw i32 %i.0286, 1
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pace.0287, i32 1
  %81 = ptrtoint ptr %cf_acls to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cf_acls, align 4
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %a_count, align 4
  %cmp = icmp ult i32 %inc105, %84
  br i1 %cmp, label %for.inc104.for.body_crit_edge, label %for.inc104.for.end106_crit_edge

for.inc104.for.end106_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end106

for.inc104.for.body_crit_edge:                    ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end106:                                       ; preds = %for.inc104.for.end106_crit_edge, %for.body.for.end106_crit_edge, %if.end.for.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nt_aces_num)
  %tobool107.not = icmp eq i32 %nt_aces_num, 0
  br i1 %tobool107.not, label %for.end106.posix_default_acl_crit_edge, label %for.end106.cleanup165_crit_edge

for.end106.cleanup165_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

for.end106.posix_default_acl_crit_edge:           ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_default_acl

posix_default_acl:                                ; preds = %for.end106.posix_default_acl_crit_edge, %entry.posix_default_acl_crit_edge
  %cf_dacls = getelementptr inbounds %struct.smb_fattr, ptr %fattr, i32 0, i32 5
  %85 = ptrtoint ptr %cf_dacls to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cf_dacls, align 4
  %tobool110.not = icmp eq ptr %86, null
  br i1 %tobool110.not, label %posix_default_acl.cleanup165_crit_edge, label %if.end112

posix_default_acl.cleanup165_crit_edge:           ; preds = %posix_default_acl
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end112:                                        ; preds = %posix_default_acl
  %87 = ptrtoint ptr %cf_dacls to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cf_dacls, align 4
  %a_count118292 = getelementptr inbounds %struct.posix_acl, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %a_count118292 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %a_count118292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp119293.not = icmp eq i32 %90, 0
  br i1 %cmp119293.not, label %if.end112.cleanup165_crit_edge, label %for.body121.lr.ph

if.end112.cleanup165_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

for.body121.lr.ph:                                ; preds = %if.end112
  %a_entries114 = getelementptr inbounds %struct.posix_acl, ptr %86, i32 0, i32 3
  %cmp.i.i.i.i266 = icmp eq ptr %user_ns, @init_user_ns
  br label %for.body121

for.body121:                                      ; preds = %for.inc161.for.body121_crit_edge, %for.body121.lr.ph
  %pace.1295 = phi ptr [ %a_entries114, %for.body121.lr.ph ], [ %incdec.ptr163, %for.inc161.for.body121_crit_edge ]
  %i.1294 = phi i32 [ 0, %for.body121.lr.ph ], [ %inc162, %for.inc161.for.body121_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i244 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3264, i32 noundef 68) #18
  %tobool123.not = icmp eq ptr %call7.i244, null
  br i1 %tobool123.not, label %for.body121.cleanup165_crit_edge, label %if.end125

for.body121.cleanup165_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end125:                                        ; preds = %for.body121
  %92 = ptrtoint ptr %pace.1295 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %pace.1295, align 4
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %93, label %if.end125.for.inc161_crit_edge [
    i16 2, label %if.then130
    i16 8, label %if.then138
  ]

if.end125.for.inc161_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc161

if.then130:                                       ; preds = %if.end125
  %95 = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.1295, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.unpack.i254 = load i32, ptr %95, align 4
  br i1 %cmp.i.i.i.i266, label %if.then130.posix_acl_uid_translate.exit263_crit_edge, label %if.end7.i.i257

if.then130.posix_acl_uid_translate.exit263_crit_edge: ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit263

if.end7.i.i257:                                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i254)
  %cmp.i.i256 = icmp eq i32 %.unpack.i254, -1
  br i1 %cmp.i.i256, label %if.end7.i.i257.posix_acl_uid_translate.exit263_crit_edge, label %if.end9.i.i259

if.end7.i.i257.posix_acl_uid_translate.exit263_crit_edge: ; preds = %if.end7.i.i257
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_uid_translate.exit263

if.end9.i.i259:                                   ; preds = %if.end7.i.i257
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i258 = tail call i32 @make_kuid(ptr noundef %user_ns, i32 noundef %.unpack.i254) #13
  br label %posix_acl_uid_translate.exit263

posix_acl_uid_translate.exit263:                  ; preds = %if.end9.i.i259, %if.end7.i.i257.posix_acl_uid_translate.exit263_crit_edge, %if.then130.posix_acl_uid_translate.exit263_crit_edge
  %retval.sroa.0.0.i.i260 = phi i32 [ %call10.i.i258, %if.end9.i.i259 ], [ -1, %if.end7.i.i257.posix_acl_uid_translate.exit263_crit_edge ], [ %.unpack.i254, %if.then130.posix_acl_uid_translate.exit263_crit_edge ]
  %.fca.0.insert.i261 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i260, 0
  %call3.i262 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i261) #13
  %97 = ptrtoint ptr %call7.i244 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %call7.i244, align 8
  %num_subauth7.i49.i = getelementptr inbounds %struct.smb_sid, ptr %call7.i244, i32 0, i32 1
  %98 = ptrtoint ptr %num_subauth7.i49.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %num_subauth7.i49.i, align 1
  %arrayidx11.i50.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 2, i32 0
  %arrayidx11.5.i55.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 2, i32 5
  %99 = call ptr @memset(ptr %arrayidx11.i50.i, i32 0, i32 5)
  %100 = ptrtoint ptr %arrayidx11.5.i55.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %arrayidx11.5.i55.i, align 1
  br label %for.body17.i62.i

for.body17.i62.i:                                 ; preds = %for.body17.i62.i.for.body17.i62.i_crit_edge, %posix_acl_uid_translate.exit263
  %i.143.i56.i = phi i32 [ %inc22.i59.i, %for.body17.i62.i.for.body17.i62.i_crit_edge ], [ 0, %posix_acl_uid_translate.exit263 ]
  %arrayidx18.i57.i = getelementptr %struct.smb_sid, ptr @creator_owner, i32 0, i32 3, i32 %i.143.i56.i
  %101 = ptrtoint ptr %arrayidx18.i57.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx18.i57.i, align 1
  %arrayidx20.i58.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 3, i32 %i.143.i56.i
  %103 = ptrtoint ptr %arrayidx20.i58.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx20.i58.i, align 4
  %inc22.i59.i = add nuw nsw i32 %i.143.i56.i, 1
  %104 = ptrtoint ptr %num_subauth7.i49.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %num_subauth7.i49.i, align 1
  %conv14.i60.i = zext i8 %105 to i32
  %cmp15.i61.i = icmp ult i32 %inc22.i59.i, %conv14.i60.i
  br i1 %cmp15.i61.i, label %for.body17.i62.i.for.body17.i62.i_crit_edge, label %for.body17.i62.i.if.end143_crit_edge

for.body17.i62.i.if.end143_crit_edge:             ; preds = %for.body17.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

for.body17.i62.i.for.body17.i62.i_crit_edge:      ; preds = %for.body17.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i62.i

if.then138:                                       ; preds = %if.end125
  %106 = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.1295, i32 0, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.unpack.i265 = load i32, ptr %106, align 4
  br i1 %cmp.i.i.i.i266, label %if.then138.posix_acl_gid_translate.exit274_crit_edge, label %if.end7.i.i268

if.then138.posix_acl_gid_translate.exit274_crit_edge: ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit274

if.end7.i.i268:                                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i265)
  %cmp.i.i267 = icmp eq i32 %.unpack.i265, -1
  br i1 %cmp.i.i267, label %if.end7.i.i268.posix_acl_gid_translate.exit274_crit_edge, label %if.end9.i.i270

if.end7.i.i268.posix_acl_gid_translate.exit274_crit_edge: ; preds = %if.end7.i.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %posix_acl_gid_translate.exit274

if.end9.i.i270:                                   ; preds = %if.end7.i.i268
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i269 = tail call i32 @make_kgid(ptr noundef %user_ns, i32 noundef %.unpack.i265) #13
  br label %posix_acl_gid_translate.exit274

posix_acl_gid_translate.exit274:                  ; preds = %if.end9.i.i270, %if.end7.i.i268.posix_acl_gid_translate.exit274_crit_edge, %if.then138.posix_acl_gid_translate.exit274_crit_edge
  %retval.sroa.0.0.i.i271 = phi i32 [ %call10.i.i269, %if.end9.i.i270 ], [ -1, %if.end7.i.i268.posix_acl_gid_translate.exit274_crit_edge ], [ %.unpack.i265, %if.then138.posix_acl_gid_translate.exit274_crit_edge ]
  %.fca.0.insert.i272 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i271, 0
  %call3.i273 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i272) #13
  %108 = ptrtoint ptr %call7.i244 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %call7.i244, align 8
  %num_subauth7.i64.i = getelementptr inbounds %struct.smb_sid, ptr %call7.i244, i32 0, i32 1
  %109 = ptrtoint ptr %num_subauth7.i64.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %num_subauth7.i64.i, align 1
  %arrayidx11.i65.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 2, i32 0
  %arrayidx11.5.i70.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 2, i32 5
  %110 = call ptr @memset(ptr %arrayidx11.i65.i, i32 0, i32 5)
  %111 = ptrtoint ptr %arrayidx11.5.i70.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %arrayidx11.5.i70.i, align 1
  br label %for.body17.i77.i

for.body17.i77.i:                                 ; preds = %for.body17.i77.i.for.body17.i77.i_crit_edge, %posix_acl_gid_translate.exit274
  %i.143.i71.i = phi i32 [ %inc22.i74.i, %for.body17.i77.i.for.body17.i77.i_crit_edge ], [ 0, %posix_acl_gid_translate.exit274 ]
  %arrayidx18.i72.i = getelementptr %struct.smb_sid, ptr @creator_group, i32 0, i32 3, i32 %i.143.i71.i
  %112 = ptrtoint ptr %arrayidx18.i72.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arrayidx18.i72.i, align 1
  %arrayidx20.i73.i = getelementptr %struct.smb_sid, ptr %call7.i244, i32 0, i32 3, i32 %i.143.i71.i
  %114 = ptrtoint ptr %arrayidx20.i73.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx20.i73.i, align 4
  %inc22.i74.i = add nuw nsw i32 %i.143.i71.i, 1
  %115 = ptrtoint ptr %num_subauth7.i64.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_subauth7.i64.i, align 1
  %conv14.i75.i = zext i8 %116 to i32
  %cmp15.i76.i = icmp ult i32 %inc22.i74.i, %conv14.i75.i
  br i1 %cmp15.i76.i, label %for.body17.i77.i.for.body17.i77.i_crit_edge, label %for.body17.i77.i.if.end143_crit_edge

for.body17.i77.i.if.end143_crit_edge:             ; preds = %for.body17.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

for.body17.i77.i.for.body17.i77.i_crit_edge:      ; preds = %for.body17.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i77.i

if.end143:                                        ; preds = %for.body17.i77.i.if.end143_crit_edge, %for.body17.i62.i.if.end143_crit_edge
  %117 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %size, align 2
  %conv144 = zext i16 %118 to i32
  %add.ptr145 = getelementptr i8, ptr %pndace, i32 %conv144
  %e_perm146 = getelementptr inbounds %struct.posix_acl_entry, ptr %pace.1295, i32 0, i32 1
  %119 = ptrtoint ptr %e_perm146 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %e_perm146, align 2
  %call147 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr145, ptr noundef nonnull %call7.i244, i32 noundef 11, i16 noundef zeroext %120, i16 noundef zeroext 511)
  %121 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %size, align 2
  %add150 = add i16 %122, %call147
  store i16 %add150, ptr %size, align 2
  %123 = ptrtoint ptr %num_aces to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_aces, align 4
  %inc152 = add i32 %124, 1
  store i32 %inc152, ptr %num_aces, align 4
  %125 = ptrtoint ptr %pace.1295 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %pace.1295, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %126)
  %cmp155 = icmp eq i16 %126, 2
  br i1 %cmp155, label %if.then157, label %if.end143.for.inc161_crit_edge

if.end143.for.inc161_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc161

if.then157:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  %access_req158 = getelementptr inbounds %struct.smb_ace, ptr %add.ptr145, i32 0, i32 3
  %127 = ptrtoint ptr %access_req158 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %access_req158, align 1
  %or159 = or i32 %128, 1073742080
  store i32 %or159, ptr %access_req158, align 1
  br label %for.inc161

for.inc161:                                       ; preds = %if.then157, %if.end143.for.inc161_crit_edge, %if.end125.for.inc161_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i244) #13
  %inc162 = add nuw i32 %i.1294, 1
  %incdec.ptr163 = getelementptr %struct.posix_acl_entry, ptr %pace.1295, i32 1
  %129 = ptrtoint ptr %cf_dacls to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cf_dacls, align 4
  %a_count118 = getelementptr inbounds %struct.posix_acl, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %a_count118 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %a_count118, align 4
  %cmp119 = icmp ult i32 %inc162, %132
  br i1 %cmp119, label %for.inc161.for.body121_crit_edge, label %for.inc161.cleanup165_crit_edge

for.inc161.cleanup165_crit_edge:                  ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

for.inc161.for.body121_crit_edge:                 ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body121

cleanup165:                                       ; preds = %for.inc161.cleanup165_crit_edge, %for.body121.cleanup165_crit_edge, %if.end112.cleanup165_crit_edge, %posix_default_acl.cleanup165_crit_edge, %for.end106.cleanup165_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @fill_ace_for_sid(ptr nocapture noundef writeonly %pntace, ptr nocapture noundef readonly %psid, i32 noundef %flags, i16 noundef zeroext %mode, i16 noundef zeroext %bits) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pntace, align 1
  %conv2 = trunc i32 %flags to i8
  %flags3 = getelementptr inbounds %struct.smb_ace, ptr %pntace, i32 0, i32 1
  %1 = ptrtoint ptr %flags3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv2, ptr %flags3, align 1
  %and32.i = and i16 %bits, %mode
  %conv3.i = zext i16 %and32.i to i32
  %and4.i = and i32 %conv3.i, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2031753
  %and6.i = and i32 %conv3.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or9.i = or i32 %spec.select.i, 278
  %spec.select33.i = select i1 %tobool7.not.i, i32 %spec.select.i, i32 %or9.i
  %and12.i = and i32 %conv3.i, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or15.i = or i32 %spec.select33.i, 2032056
  %spec.select = select i1 %tobool13.not.i, i32 %spec.select33.i, i32 %or15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and17.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %entry.mode_to_access_flags.exit_crit_edge, label %do.end.i

entry.mode_to_access_flags.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_to_access_flags.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv3.i, i32 noundef %spec.select) #17
  br label %mode_to_access_flags.exit

mode_to_access_flags.exit:                        ; preds = %do.end.i, %entry.mode_to_access_flags.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  %spec.select4 = select i1 %tobool.not, i32 1179784, i32 %spec.select
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select4)
  %access_req4 = getelementptr inbounds %struct.smb_ace, ptr %pntace, i32 0, i32 3
  %4 = ptrtoint ptr %access_req4 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %access_req4, align 1
  %5 = ptrtoint ptr %psid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %psid, align 1
  %sid = getelementptr inbounds %struct.smb_ace, ptr %pntace, i32 0, i32 4
  %7 = ptrtoint ptr %sid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %sid, align 1
  %num_subauth = getelementptr inbounds %struct.smb_sid, ptr %psid, i32 0, i32 1
  %8 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_subauth, align 1
  %num_subauth7 = getelementptr inbounds %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %num_subauth7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %num_subauth7, align 1
  %arrayidx = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx11, align 1
  %arrayidx.1 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %arrayidx11.1 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx11.1, align 1
  %arrayidx.2 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %arrayidx11.2 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx11.2, align 1
  %arrayidx.3 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3, align 1
  %arrayidx11.3 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx11.3, align 1
  %arrayidx.4 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.4, align 1
  %arrayidx11.4 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 4
  %25 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx11.4, align 1
  %arrayidx.5 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5, align 1
  %arrayidx11.5 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 5
  %28 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx11.5, align 1
  %29 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp157.not = icmp eq i8 %29, 0
  br i1 %cmp157.not, label %mode_to_access_flags.exit.for.end24_crit_edge, label %mode_to_access_flags.exit.for.body17_crit_edge

mode_to_access_flags.exit.for.body17_crit_edge:   ; preds = %mode_to_access_flags.exit
  br label %for.body17

mode_to_access_flags.exit.for.end24_crit_edge:    ; preds = %mode_to_access_flags.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %mode_to_access_flags.exit.for.body17_crit_edge
  %i.18 = phi i32 [ %inc23, %for.body17.for.body17_crit_edge ], [ 0, %mode_to_access_flags.exit.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.smb_sid, ptr %psid, i32 0, i32 3, i32 %i.18
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx18, align 1
  %arrayidx21 = getelementptr %struct.smb_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 %i.18
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %arrayidx21, align 1
  %inc23 = add nuw nsw i32 %i.18, 1
  %33 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_subauth, align 1
  %conv14 = zext i8 %34 to i32
  %cmp15 = icmp ult i32 %inc23, %conv14
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.end24_crit_edge

for.body17.for.end24_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

for.end24:                                        ; preds = %for.body17.for.end24_crit_edge, %mode_to_access_flags.exit.for.end24_crit_edge
  %.lcssa = phi i8 [ 0, %mode_to_access_flags.exit.for.end24_crit_edge ], [ %34, %for.body17.for.end24_crit_edge ]
  %conv14.tr = zext i8 %.lcssa to i16
  %35 = shl nuw nsw i16 %conv14.tr, 2
  %conv27 = add nuw nsw i16 %35, 16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %size28 = getelementptr inbounds %struct.smb_ace, ptr %pntace, i32 0, i32 2
  %37 = ptrtoint ptr %size28 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %size28, align 1
  ret i16 %conv27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/smbacl.c", i32 820, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @parse_sec_desc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @parse_sec_desc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/smbacl.c", i32 828, i32 3}
!8 = !{ptr @parse_sec_desc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @parse_sec_desc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/smbacl.c", i32 837, i32 4}
!12 = !{ptr @parse_sec_desc._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @parse_sec_desc._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/smbacl.c", i32 843, i32 4}
!16 = !{ptr @parse_sec_desc._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @parse_sec_desc._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/smbacl.c", i32 852, i32 4}
!20 = !{ptr @parse_sec_desc._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @parse_sec_desc._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/smbacl.c", i32 858, i32 4}
!24 = !{ptr @parse_sec_desc._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @parse_sec_desc._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/smbacl.c", i32 1167, i32 2}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smb_check_perm_dacl._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @smb_check_perm_dacl._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/smbacl.c", i32 1276, i32 4}
!33 = !{ptr @smb_check_perm_dacl._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @smb_check_perm_dacl._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/smbacl.c", i32 1295, i32 3}
!37 = !{ptr @smb_check_perm_dacl._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @smb_check_perm_dacl._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ksmbd/smbacl.c", i32 1343, i32 4}
!41 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @set_info_sec._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @set_info_sec._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ksmbd/smbacl.c", i32 1350, i32 5}
!46 = !{ptr @set_info_sec._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @set_info_sec._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sid_unix_users, !49, !"sid_unix_users", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/smbacl.c", i32 39, i32 29}
!50 = !{ptr @sid_unix_groups, !51, !"sid_unix_groups", i1 false, i1 false}
!51 = !{!"../fs/ksmbd/smbacl.c", i32 43, i32 29}
!52 = !{ptr @creator_owner, !53, !"creator_owner", i1 false, i1 false}
!53 = !{!"../fs/ksmbd/smbacl.c", i32 25, i32 29}
!54 = !{ptr @creator_group, !55, !"creator_group", i1 false, i1 false}
!55 = !{!"../fs/ksmbd/smbacl.c", i32 28, i32 29}
!56 = !{ptr @sid_unix_NFS_users, !57, !"sid_unix_NFS_users", i1 false, i1 false}
!57 = !{!"../fs/ksmbd/smbacl.c", i32 53, i32 29}
!58 = !{ptr @sid_unix_NFS_groups, !59, !"sid_unix_NFS_groups", i1 false, i1 false}
!59 = !{!"../fs/ksmbd/smbacl.c", i32 58, i32 29}
!60 = !{ptr @sid_unix_NFS_mode, !61, !"sid_unix_NFS_mode", i1 false, i1 false}
!61 = !{!"../fs/ksmbd/smbacl.c", i32 63, i32 29}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ksmbd/smbacl.c", i32 790, i32 3}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @parse_sid._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @parse_sid._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ksmbd/smbacl.c", i32 268, i32 3}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sid_to_id._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sid_to_id._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ksmbd/smbacl.c", i32 384, i32 3}
!74 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @parse_dacl._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @parse_dacl._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ksmbd/smbacl.c", i32 388, i32 2}
!79 = !{ptr @parse_dacl._entry.43, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @parse_dacl._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @parse_dacl._entry.46, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../fs/ksmbd/smbacl.c", i32 492, i32 5}
!83 = !{ptr @parse_dacl._entry_ptr.47, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ksmbd/smbacl.c", i32 141, i32 3}
!86 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @access_flags_to_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @access_flags_to_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ksmbd/smbacl.c", i32 158, i32 2}
!91 = !{ptr @access_flags_to_mode._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @access_flags_to_mode._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @sid_authusers, !94, !"sid_authusers", i1 false, i1 false}
!94 = !{!"../fs/ksmbd/smbacl.c", i32 35, i32 29}
!95 = !{ptr @sid_everyone, !96, !"sid_everyone", i1 false, i1 false}
!96 = !{!"../fs/ksmbd/smbacl.c", i32 32, i32 29}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ksmbd/smbacl.c", i32 189, i32 2}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mode_to_access_flags._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @mode_to_access_flags._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @domain, !103, !"domain", i1 false, i1 false}
!103 = !{!"../fs/ksmbd/smbacl.c", i32 20, i32 29}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2152440319}
!115 = !{i64 2148778414}
!116 = !{i64 2148692854, i64 2148692886, i64 2148692915, i64 2148692949, i64 2148692980, i64 2148693003}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2150399503}
